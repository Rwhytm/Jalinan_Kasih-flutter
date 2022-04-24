import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_firebase_chat_core/flutter_firebase_chat_core.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:jalinan_kasih/common/constant.dart';
import 'package:jalinan_kasih/pages/user.dart';
import 'package:jalinan_kasih/pages/user_admin.dart';
import 'package:jalinan_kasih/pages/wrapper.dart';
import 'package:jalinan_kasih/widgets/pertanyaan.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({
    Key? key,
    required this.room,
  }) : super(key: key);

  final types.Room room;
  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  void _handleAtachmentPressed() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: SizedBox(
            height: 144,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  TextButton(
                    onPressed: () {
                      // Navigator.pop(context);
                      // _handleImageSelection();
                    },
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Apa saja organ reproduksi laki-laki'),
                    ),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Cancel'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _handleSendPressed(types.PartialText message) {
    FirebaseChatCore.instance.sendMessage(
      message,
      widget.room.id,
    );
  }

  void _botMessage(String message) {
    var roomId = widget.room.id;
    FirebaseFirestore.instance
        .collection('rooms')
        .doc(roomId)
        .collection('messages')
        .add(
      {
        'authorId': 'Y3A6cYwVuUMvwBykGhfkUZ3iKNC3',
        'createdAt': Timestamp.now(),
        'text': message,
        'type': 'text',
        'updatedAt': Timestamp.now()
      },
    );
  }

  Future<void> _showMyDialog() async {
    final coba = FirebaseChatCore.instance.rooms;
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(child: const Text('FAQ')),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                TextButton(
                  onPressed: () async {
                    _handleSendPressed(types.PartialText(text: '$pertanyaan1'));
                    Future.delayed(Duration(seconds: 2), () {
                      _botMessage('$jawaban1');
                    });
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('1. $pertanyaan1'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleSendPressed(
                      types.PartialText(text: '$pertanyaan2'),
                    );
                    Future.delayed(Duration(seconds: 2), () {
                      _botMessage('$jawaban2');
                    });
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('2. $pertanyaan2'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleSendPressed(
                      types.PartialText(text: '$pertanyaan3'),
                    );
                    Future.delayed(
                      Duration(seconds: 2),
                      () {
                        _botMessage('$jawaban3');
                      },
                    );
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('3. $pertanyaan3'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleSendPressed(
                      types.PartialText(text: '$pertanyaan4'),
                    );
                    Future.delayed(
                      Duration(seconds: 2),
                      () {
                        _botMessage('$jawaban4');
                      },
                    );
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('4. $pertanyaan4'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleSendPressed(
                      types.PartialText(text: '$pertanyaan5'),
                    );
                    Future.delayed(
                      Duration(seconds: 2),
                      () {
                        _botMessage('$jawaban5');
                      },
                    );
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('5. $pertanyaan5'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleSendPressed(
                      types.PartialText(text: '$pertanyaan6'),
                    );
                    Future.delayed(
                      Duration(seconds: 2),
                      () {
                        _botMessage('$jawaban6');
                      },
                    );
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('6. $pertanyaan6'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleSendPressed(
                      types.PartialText(text: '$pertanyaan7'),
                    );
                    Future.delayed(
                      Duration(seconds: 2),
                      () {
                        _botMessage('$jawaban7');
                      },
                    );
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('7. $pertanyaan7'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleSendPressed(
                      types.PartialText(text: '$pertanyaan8'),
                    );
                    Future.delayed(
                      Duration(seconds: 2),
                      () {
                        _botMessage('$jawaban8');
                      },
                    );
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('8. $pertanyaan8'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleSendPressed(
                      types.PartialText(text: '$pertanyaan9'),
                    );
                    Future.delayed(
                      Duration(seconds: 2),
                      () {
                        _botMessage('$jawaban9');
                      },
                    );
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('9. $pertanyaan9'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleSendPressed(
                      types.PartialText(text: '$pertanyaan10'),
                    );
                    Future.delayed(
                      Duration(seconds: 2),
                      () {
                        _botMessage('$jawaban10');
                      },
                    );
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('10. $pertanyaan10'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleSendPressed(
                      types.PartialText(text: '$pertanyaan11'),
                    );
                    Future.delayed(
                      Duration(seconds: 2),
                      () {
                        _botMessage('$jawaban11');
                      },
                    );
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('11. $pertanyaan11'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleSendPressed(
                      types.PartialText(text: '$pertanyaan12'),
                    );
                    Future.delayed(
                      Duration(seconds: 2),
                      () {
                        _botMessage('$jawaban12');
                      },
                    );
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('12. $pertanyaan12'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleSendPressed(
                      types.PartialText(text: '$pertanyaan13'),
                    );
                    Future.delayed(
                      Duration(seconds: 2),
                      () {
                        _botMessage('$jawaban13');
                      },
                    );
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('13. $pertanyaan13'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleSendPressed(
                      types.PartialText(text: '$pertanyaan14'),
                    );
                    Future.delayed(
                      Duration(seconds: 2),
                      () {
                        _botMessage('$jawaban14');
                      },
                    );
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('14. $pertanyaan14'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleSendPressed(
                      types.PartialText(text: '$pertanyaan15'),
                    );
                    Future.delayed(
                      Duration(seconds: 2),
                      () {
                        _botMessage('$jawaban15');
                      },
                    );
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('15. $pertanyaan15'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleSendPressed(
                      types.PartialText(text: '$pertanyaan16'),
                    );
                    Future.delayed(
                      Duration(seconds: 2),
                      () {
                        _botMessage('$jawaban16');
                      },
                    );
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('16. $pertanyaan16'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleSendPressed(
                      types.PartialText(text: '$pertanyaan17'),
                    );
                    Future.delayed(
                      Duration(seconds: 2),
                      () {
                        _botMessage('$jawaban17');
                      },
                    );
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('17. $pertanyaan17'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleSendPressed(
                      types.PartialText(text: '$pertanyaan18'),
                    );
                    Future.delayed(
                      Duration(seconds: 2),
                      () {
                        _botMessage('$jawaban18');
                      },
                    );
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('18. $pertanyaan18'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleSendPressed(
                      types.PartialText(text: '$pertanyaan19'),
                    );
                    Future.delayed(
                      Duration(seconds: 2),
                      () {
                        _botMessage('$jawaban19');
                      },
                    );
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('19. $pertanyaan19'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleSendPressed(
                      types.PartialText(text: '$pertanyaan20'),
                    );
                    Future.delayed(
                      Duration(seconds: 2),
                      () {
                        _botMessage('$jawaban20');
                      },
                    );
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('20. $pertanyaan20'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleSendPressed(
                      types.PartialText(text: '$pertanyaan21'),
                    );
                    Future.delayed(
                      Duration(seconds: 2),
                      () {
                        _botMessage('$jawaban21');
                      },
                    );
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('21. $pertanyaan21'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleSendPressed(
                      types.PartialText(text: '$pertanyaan22'),
                    );
                    Future.delayed(
                      Duration(seconds: 2),
                      () {
                        _botMessage('$jawaban22');
                      },
                    );
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('22. $pertanyaan22'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleSendPressed(
                      types.PartialText(text: '$pertanyaan23'),
                    );
                    Future.delayed(
                      Duration(seconds: 2),
                      () {
                        _botMessage('$jawaban23');
                      },
                    );
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('23. $pertanyaan23'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleSendPressed(
                      types.PartialText(text: '$pertanyaan24'),
                    );
                    Future.delayed(
                      Duration(seconds: 2),
                      () {
                        _botMessage('$jawaban24');
                      },
                    );
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('24. $pertanyaan24'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleSendPressed(
                      types.PartialText(text: '$pertanyaan25'),
                    );
                    Future.delayed(
                      Duration(seconds: 2),
                      () {
                        _botMessage('$jawaban25');
                      },
                    );
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('25. $pertanyaan25'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleSendPressed(
                      types.PartialText(text: '$pertanyaan26'),
                    );
                    Future.delayed(
                      Duration(seconds: 2),
                      () {
                        _botMessage('$jawaban26');
                      },
                    );
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('26. $pertanyaan26'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleSendPressed(
                      types.PartialText(text: '$pertanyaan27'),
                    );
                    Future.delayed(
                      Duration(seconds: 2),
                      () {
                        _botMessage('$jawaban27');
                      },
                    );
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('27. $pertanyaan27'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleSendPressed(
                      types.PartialText(text: '$pertanyaan28'),
                    );
                    Future.delayed(
                      Duration(seconds: 2),
                      () {
                        _botMessage('$jawaban28');
                      },
                    );
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('28. $pertanyaan28'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleSendPressed(
                      types.PartialText(text: '$pertanyaan29'),
                    );
                    Future.delayed(
                      Duration(seconds: 2),
                      () {
                        _botMessage('$jawaban29');
                      },
                    );
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('29. $pertanyaan29'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleSendPressed(
                      types.PartialText(text: '$pertanyaan30'),
                    );
                    Future.delayed(
                      Duration(seconds: 2),
                      () {
                        _botMessage('$jawaban30');
                      },
                    );
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('30. $pertanyaan30'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleSendPressed(
                      types.PartialText(text: '$pertanyaan31'),
                    );
                    Future.delayed(
                      Duration(seconds: 2),
                      () {
                        _botMessage('$jawaban31');
                      },
                    );
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('31.	$pertanyaan31'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleSendPressed(
                      types.PartialText(text: '$pertanyaan32'),
                    );
                    Future.delayed(
                      Duration(seconds: 2),
                      () {
                        _botMessage('$jawaban32');
                      },
                    );
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('32. $pertanyaan32'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleSendPressed(
                      types.PartialText(text: '$pertanyaan33'),
                    );
                    Future.delayed(
                      Duration(seconds: 2),
                      () {
                        _botMessage('$jawaban33');
                      },
                    );
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('33. $pertanyaan33'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleSendPressed(
                      types.PartialText(text: '$pertanyaan34'),
                    );
                    Future.delayed(
                      Duration(seconds: 2),
                      () {
                        _botMessage('$jawaban34');
                      },
                    );
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('34. $pertanyaan34'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleSendPressed(
                      types.PartialText(text: '$pertanyaan35'),
                    );
                    Future.delayed(
                      Duration(seconds: 2),
                      () {
                        _botMessage('$jawaban35');
                      },
                    );
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('35. $pertanyaan35'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _handleSendPressed(
                      types.PartialText(text: '$pertanyaan36'),
                    );
                    Future.delayed(
                      Duration(seconds: 2),
                      () {
                        _botMessage('$jawaban36');
                      },
                    );
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('36. $pertanyaan36'),
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('BATAL'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _faqMessage(String pesan) {
    FirebaseChatCore.instance.sendMessage(
      pesan,
      widget.room.id,
    );
  }

  @override
  Widget build(BuildContext context) {
    var currentUser = FirebaseAuth.instance.currentUser;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tombolColor,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 25,
          ),
          onPressed: () {
            (currentUser!.isAnonymous == false)
                ? Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const UsersPage();
                      },
                    ),
                  )
                : Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const UsersPageAdmin();
                      },
                    ),
                  );
          },
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
        title: const Text('Chat'),
      ),
      body: StreamBuilder<types.Room>(
        initialData: widget.room,
        stream: FirebaseChatCore.instance.room(widget.room.id),
        builder: (context, snapshot) {
          return StreamBuilder<List<types.Message>>(
            initialData: const [],
            stream: FirebaseChatCore.instance.messages(snapshot.data!),
            builder: (context, snapshot) {
              return SafeArea(
                bottom: true,
                child: Chat(
                  // isAttachmentUploading: _isAttachmentUploading,
                  messages: snapshot.data ?? [],
                  onAttachmentPressed: _showMyDialog,
                  // onMessageTap: _handleMessageTap,
                  // onPreviewDataFetched: _handlePreviewDataFetched,
                  onSendPressed: _handleSendPressed,
                  user: types.User(
                    id: FirebaseChatCore.instance.firebaseUser?.uid ?? '',
                  ),
                ),
              );
            },
          );
        },
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     _showMyDialog();
      //   },
      //   child: Icon(Icons.question_mark_sharp),
      //   backgroundColor: tombolColor,
      // ),
    );
  }
}
