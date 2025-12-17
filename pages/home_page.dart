import 'package:flutter/material.dart';
import 'package:unity_main/components/my_drawer.dart';
import 'package:unity_main/services/chat/chat_service.dart';
import 'package:unity_main/components/user_tile.dart';
import 'package:unity_main/pages/chat_page.dart';
import 'package:unity_main/pages/profile_page.dart';
import 'package:unity_main/services/auth/auth_service.dart';
import 'package:unity_main/services/profile/profile_service.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  // chat and auth service
  final ChatService _chatService = ChatService();
  final AuthService _authService = AuthService();
  final ProfileService _profileService = ProfileService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1a1a1a),
      appBar: AppBar(
        title:const Text("Home"),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfilePage(),
                  ),
                );
              },
              child: StreamBuilder(
                stream: _profileService.profileStream(),
                builder: (context, snapshot) {
                  String? profileImageUrl;
                  
                  if (snapshot.hasData && snapshot.data!.exists) {
                    final data = snapshot.data!.data() as Map<String, dynamic>?;
                    profileImageUrl = data?['profileImageUrl'];
                  }

                  return Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                      ),
                    ),
                    child: CircleAvatar(
                      backgroundColor: const Color(0xFF2a2a2a),
                      backgroundImage: (profileImageUrl != null && profileImageUrl.isNotEmpty)
                          ? NetworkImage(profileImageUrl)
                          : null,
                      child: (profileImageUrl == null || profileImageUrl.isEmpty)
                          ? const Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 24,
                            )
                          : null,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
        
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            color: Colors.grey,
            height: 1.0,
          ),
        ),
      ),
      drawer:const MyDrawer(),
      body: _buildUserList(),
    );

  }

  // build a user list except for current logged in user
  Widget _buildUserList() {
    return StreamBuilder(
      stream: _chatService.getUsersStream(),
      builder: (context, snapshot) {
        // error
        if (snapshot.hasError) {
          return const Text("Error");
        }

        // loading..
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text("Loading...");
        }

        // return list view
        return ListView(
          children: snapshot.data!
          .map<Widget>((userData) => _buildUserListItem(userData, context))
          .toList()
        );
      },
      );
  }
  
  // build  individual list tile for user
  Widget _buildUserListItem(Map<String, dynamic> userData, BuildContext context) {
    //display all users except current user
   if (userData["email"] != _authService.currentUser!.email) {
    return UserTile(
      text: userData["email"],
      onTap: () {
        // tapped on a user -> go to chat page
        Navigator.push
        (context,
          MaterialPageRoute(
            builder: (context) => ChatPage(
              receiverEmail: userData["email"],
              receiverID: userData["uid"],
            ),
          ),
        );
      },
    ); 
    } else {
      return const SizedBox.shrink();
    }
  }
}
