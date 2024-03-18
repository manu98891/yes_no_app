import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/precentation/providers/chat_provaider.dart';
import 'package:yes_no_app/precentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/precentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/precentation/widgets/shared/message_field_box.dart';

class ChatScream extends StatelessWidget {
  const ChatScream({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding:  EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://beta.dopple.ai/_next/image?url=https%3A%2F%2Fimagedelivery.net%2FLBWXYQ-XnKSYxbZ-NuYGqQ%2F160c1996-c98d-4231-dbe9-77536e195300%2Favatarhd&w=128&q=75'),
          ),
        ),
        title: const Text('Henry Cavill'),
      ),
      body: _ChatView() ,
    );
  }
}

class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: ScrollController(),
                itemCount: chatProvider.messageList.length,
                itemBuilder: (context, index) {
                  final message = chatProvider.messageList[index];

                  return( message.fromWho == FromWho.hers)
                    ? const HerMessageBubble()
                    :  MyMessageBubble(messege: message,);
                },)
            ),
      
            MessageFileBox(
              //onValue: (value) => chatProvider.sendMessage(value),
              onValue: chatProvider.sendMessage,
            ),
          ],
        ),
      ),
    );
  }
}