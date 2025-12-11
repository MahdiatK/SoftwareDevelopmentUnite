import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ChatService {

// get instance of firestore
final FirebaseFirestore _firestore = FirebaseFirestore.instance;

// get user stream
/*

List<Map<String,dynamic> = 

  [
  {
   'email':test3@gmail.com,
   'id': ..
  }
  {
   'email':test4@gmail.com,
   'id': ..
  }
  ]
  
*/
Stream<List<Map<String, dynamic>>>  getUsersStream() {
  return _firestore.collection("Users").snapshots().map((snapshot) {
    return snapshot.docs.map((doc) {
      // go through each individual user
      final user = doc.data();

      // return user 
      return user;
    }).toList();
  });
}

// send message

// get messages

}
