import 'package:flutter/material.dart';

class ChatScream extends StatelessWidget {
  const ChatScream({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://beta.dopple.ai/_next/image?url=https%3A%2F%2Fimagedelivery.net%2FLBWXYQ-XnKSYxbZ-NuYGqQ%2F160c1996-c98d-4231-dbe9-77536e195300%2Favatarhd&w=128&q=75'),
          ),
        ),
        title: const Text('Henry Cavill'),
      ),
    );
  }
}