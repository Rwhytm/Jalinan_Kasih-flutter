import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_firebase_chat_core/flutter_firebase_chat_core.dart';
import 'package:jalinan_kasih/common/constant.dart';
import 'package:jalinan_kasih/pages/wrapper.dart';
import '../common/util.dart';
import 'chat.dart';

class UsersPageAdmin extends StatelessWidget {
  const UsersPageAdmin({Key? key}) : super(key: key);

  void _handlePressed(types.User otherUser, BuildContext context) async {
    final room = await FirebaseChatCore.instance.createRoom(otherUser);

    Navigator.of(context).pop();
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ChatPage(
          room: room,
        ),
      ),
    );
  }

  Widget _buildAvatar(types.User user) {
    final color = getUserAvatarNameColor(user);
    final hasImage = user.imageUrl != null;
    final name = getUserName(user);

    return Container(
      margin: const EdgeInsets.only(right: 16),
      child: CircleAvatar(
        backgroundColor: hasImage ? Colors.transparent : color,
        backgroundImage: hasImage ? NetworkImage(user.imageUrl!) : null,
        radius: 20,
        child: !hasImage
            ? Text(
                name.isEmpty ? '' : name[0].toUpperCase(),
                style: const TextStyle(color: Colors.white),
              )
            : null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    User? firebaseUser = FirebaseAuth.instance.currentUser;
    final user2 = FirebaseFirestore.instance
        .collection('users')
        .orderBy('role', descending: false)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs.fold<List<types.User>>(
            [],
            (previousValue, doc) {
              if (firebaseUser!.uid == doc.id) return previousValue;

              final data = doc.data();

              data['createdAt'] = data['createdAt']?.millisecondsSinceEpoch;
              data['id'] = doc.id;
              data['lastSeen'] = data['lastSeen']?.millisecondsSinceEpoch;
              data['updatedAt'] = data['updatedAt']?.millisecondsSinceEpoch;

              return [...previousValue, types.User.fromJson(data)];
            },
          ),
        );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tombolColor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 25,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Wrapper();
                },
              ),
            );
          },
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
        title: const Text('Admin Support'),
      ),
      body: StreamBuilder<List<types.User>>(
        stream: user2,
        initialData: const [],
        builder: (context, snapshot) {
          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(
                bottom: 200,
              ),
              child: const Text('tidak ada user'),
            );
          }

          return ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              // var jumlah = snapshot.data!.length - 2;
              final user = snapshot.data![0];

              return GestureDetector(
                onTap: () {
                  _handlePressed(user, context);
                },
                child: Container(
                  width: double.infinity,
                  color: Colors.white60,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: SizedBox(
                    child: Row(
                      children: [
                        _buildAvatar(user),
                        Text(
                          getUserName(user),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
