import 'package:flutter/material.dart';
import 'package:whatsapptask/calls.dart';
import 'package:whatsapptask/chats.dart';
import 'package:whatsapptask/groups.dart';
import 'package:whatsapptask/status.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      
    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 4, 
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt)),
            
            IconButton(onPressed: (){}, icon: Icon(Icons.search)),

            PopupMenuButton(itemBuilder: (BuildContext bc){
              return [
                PopupMenuItem(child: Text("Profile")),
                PopupMenuItem(child: Text("setting")),
                PopupMenuItem(child: Text("URl"))
              ];
            }),
            
          ],
          
          title: Text("WhatsApp"),
          

          bottom: TabBar(
            tabs: [
              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Tab(icon: Icon(Icons.groups,size: 20,),),
                ],
              ),
              Tab(text: "Chats"),
              Tab(text: "Status",),
              Tab(text: "Calls",),
            ], indicatorColor: Colors.white,
            ),
        ),
        body: TabBarView(
          children: [
            groups(),
            Chats(),
            Status(),
            Calls()
          ]),
      )
      );
  } 
}