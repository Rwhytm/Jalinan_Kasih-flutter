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
                  onPressed: () {},
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('1. Apa saja organ reproduksi laki-laki'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    // _handleImageSelection();
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('2. Apa saja organ reproduksi laki-laki'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    // _handleFileSelection();
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('3. apa saja organ reproduksi perempuan'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    // _handleFileSelection();
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        '4. Bagaimana menjaga kebersihan organ reproduksi'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    // _handleFileSelection();
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('5. apa itu pubertas'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    // _handleFileSelection();
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        '6. Apa perubahan secara umum pada remaja laki-laki dan perempuan yang terjadi saat pubertas?'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    // _handleFileSelection();
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        '7. Apa perubahan fisik secara khusus terjadi pada remaja perempuan saat pubertas?'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    // _handleFileSelection();
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        '8. Apa perubahan fisik secara khusus terjadi pada remaja laki-laki saat pubertas?'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    // _handleFileSelection();
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('9. Apa itu menstruasi?'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    // _handleFileSelection();
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('10. Bagaimana proses menstruasi?'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    // _handleFileSelection();
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child:
                        Text('11. Apa yang harus dilakukan saat menstruasi?'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    // _handleFileSelection();
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('11. Apa itu mimpi basah?'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    // _handleFileSelection();
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('12. Bagaimana proses terjadinya mimpi basah?'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    // _handleFileSelection();
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('13. Apa itu seks?'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    // _handleFileSelection();
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('14. Apa itu seksualitas?'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    // _handleFileSelection();
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('15. Apa itu orientasi seksual?'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    // _handleFileSelection();
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        '16. Apa akibat seks sebelum menikah pada remaja?'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    // _handleFileSelection();
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('17. Bagaimana proses tejadinya kehamilan?'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    // _handleFileSelection();
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('18. Apa itu hubungan seksual?'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    // _handleFileSelection();
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('19. Bagaimana kehamilan yang berisiko?'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    // _handleFileSelection();
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        '20. Bagaimana menghindari empat kondisi kehamilan berisiko?'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    // _handleFileSelection();
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('21. Apa itu stunting?'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    // _handleFileSelection();
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('22. Apa faktor terjadinya stunting?'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    // _handleFileSelection();
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('23. Apa itu hubungan seksual?'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    // _handleFileSelection();
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('24. Apa ciri-ciri stunting?'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    // _handleFileSelection();
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child:
                        Text('25. Apa saja sumber gizi yang baik bagi remaja?'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    // _handleFileSelection();
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        '26. Apa gangguan kesehatan yang terjadi terkait dengan gizi remaja?'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    // _handleFileSelection();
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('27. Apa itu bullying?'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    // _handleFileSelection();
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('28. Apa saja bentuk Tindakan bullying?'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    // _handleFileSelection();
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('29. Apa itu kekerasan seksual?'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    // _handleFileSelection();
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('30. Bagaimana menghindari kekerasan seksual?'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    // _handleFileSelection();
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('31.	Apa itu IMS?'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    // _handleFileSelection();
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('32. Apa gejala-gejala IMS?'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    // _handleFileSelection();
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('33. Apa itu HIV/AIDS?'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    // _handleFileSelection();
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('34. Apa gejala HIV/AIDS?'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    // _handleFileSelection();
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        '35. Apa risiko Kesehatan terhadap perkawinan remaja?'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    // _handleFileSelection();
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('36. Berapa usia ideal untuk menikah?'),
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
