import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      
      body: ListView.separated(
        itemBuilder: (context,index){
          return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage("https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png"),
            backgroundColor: Colors.black,
        
          ),title: Text("Name"),
          subtitle: Text("....."),
          trailing: Text("date"),
          
          );
        }, 
        separatorBuilder: (context,index){
          return Divider(color: Colors.black,);
        }, itemCount: 20)
        
        
    );
  }
}