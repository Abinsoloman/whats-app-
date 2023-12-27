import 'package:flutter/material.dart';

class groups extends StatelessWidget {
  const groups({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView.separated(
        itemBuilder: (context,index){
          return ListTile(
            leading: CircleAvatar(
              child: Text("G"),
            ),title: Text("Groups"),
            subtitle: Text("Tap to add status update"),
          );
        }, 
        separatorBuilder: (context,index){
          return Divider();
        }, itemCount: 1),
    );

      
    
  }
}