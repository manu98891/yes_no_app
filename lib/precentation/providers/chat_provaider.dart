import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{

  final ScrollController chatScrollController = ScrollController();

  List<Message> messageList = [
    Message(text: 'Hello Henry', fromWho: FromWho.mi),
    Message(text: 'Do you like Warhammer 40000?', fromWho: FromWho.mi),
    //Message(text: 'What is your favorite faction ?', fromWho: FromWho.mi)
  ];

  Future <void> sendMessage(String text) async {
    
    if(text.isEmpty) return;

    final newMessage = Message(text: text, fromWho: FromWho.mi);
    messageList.add(newMessage);

    notifyListeners();
    //moveScrollToBottom();
  }
  /*
  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));
 
    chatScrollController.animateTo(
      chatScrollController.position.extentTotal,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut
    );
  }  
 */

}