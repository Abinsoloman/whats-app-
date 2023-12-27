import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView.separated(
        itemBuilder: (context,index){
          return ListTile(
          leading: CircleAvatar(
            child: Text("S"),
          ),title: Text("My Status"),
          subtitle: Text("Tap to add status update"),
          );
        }, separatorBuilder: (context,index){
          return Divider();
        }, itemCount: 1),
    );
  }
}