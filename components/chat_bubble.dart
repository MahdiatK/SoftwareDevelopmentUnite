import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget { 
  final String message;
  final bool isCurrentUser;
  final bool isRead;
  
  const ChatBubble({
    super.key, 
    required this.message,
    required this.isCurrentUser,
    this.isRead = false,
    });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isCurrentUser ? Colors.blue.shade700 : Colors.grey.shade500,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 2.5, horizontal: 25),
      child: Column(
        crossAxisAlignment: isCurrentUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            message,
            style: const TextStyle(color: Colors.white),
          ),
          if (isCurrentUser)
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.done_all,
                    size: 14,
                    color: isRead ? Colors.green.shade400 : Colors.grey.shade300,
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
