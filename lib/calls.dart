import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView.separated(
        itemBuilder: (context,index){
          return ListTile(
            leading: CircleAvatar(
              child: Text("C"),
            ),title: Text("Create call link"),
            subtitle: Text("Share a link for your WhatsApp call"),
          );
        },
         separatorBuilder: (context,index){
          return Divider();
         }, itemCount: 1),
    );
  }
}