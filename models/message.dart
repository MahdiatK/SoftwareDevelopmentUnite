import 'package:cloud_firestore/cloud_firestore.dart';

class Message {
  final String senderID;
  final String senderemail;
  final String receiverID;
  final String message;
  final Timestamp timestamp;
  final bool isRead;

  Message({
    required this.senderID,
    required this.senderemail,
    required this.receiverID,
    required this.message,
    required this.timestamp,
    this.isRead = false,
  });

  //convert to a map
  Map<String, dynamic> toMap() {
    return {
      'senderID': senderID,
      'senderemail': senderemail,
      'receiverID': receiverID,
      'message': message,
      'timestamp': timestamp,
      'isRead': isRead,
    };
  }
}
