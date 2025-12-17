import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

class ProfileService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Get current user ID
  String get currentUserId => _auth.currentUser!.uid;

  // Save profile data to Firestore
  Future<void> saveProfile({
    required String name,
    required String bio,
    String? profileImageUrl,
  }) async {
    try {
      await _firestore.collection('users').doc(currentUserId).set({
        'name': name,
        'bio': bio,
        'profileImageUrl': profileImageUrl ?? '',
        'email': _auth.currentUser!.email,
        'uid': currentUserId,
        'updatedAt': Timestamp.now(),
      }, SetOptions(merge: true));
    } catch (e) {
      throw Exception('Failed to save profile: $e');
    }
  }

  // Upload profile image to Firebase Storage
  Future<String> uploadProfileImage(File imageFile) async {
    try {
      final String fileName = 'profile_$currentUserId.jpg';
      final Reference storageRef = _storage.ref().child('profile_images/$fileName');
      
      final UploadTask uploadTask = storageRef.putFile(imageFile);
      final TaskSnapshot snapshot = await uploadTask;
      
      final String downloadUrl = await snapshot.ref.getDownloadURL();
      return downloadUrl;
    } catch (e) {
      throw Exception('Failed to upload image: $e');
    }
  }

  // Get profile data from Firestore
  Future<Map<String, dynamic>?> getProfile() async {
    try {
      final DocumentSnapshot doc = await _firestore.collection('users').doc(currentUserId).get();
      
      if (doc.exists) {
        return doc.data() as Map<String, dynamic>;
      }
      return null;
    } catch (e) {
      throw Exception('Failed to get profile: $e');
    }
  }

  // Get profile data for any user by ID
  Future<Map<String, dynamic>?> getUserProfile(String userId) async {
    try {
      final DocumentSnapshot doc = await _firestore.collection('users').doc(userId).get();
      
      if (doc.exists) {
        return doc.data() as Map<String, dynamic>;
      }
      return null;
    } catch (e) {
      throw Exception('Failed to get user profile: $e');
    }
  }

  // Stream profile data
  Stream<DocumentSnapshot> profileStream() {
    return _firestore.collection('users').doc(currentUserId).snapshots();
  }
}

