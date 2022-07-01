
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:io';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({Key? key}) : super(key: key);

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  String currTime =DateFormat("h:mm a").format(DateTime.now());

  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child:DefaultTabController(
        length: 3,
        child:Scaffold(
          backgroundColor: Theme.of(context).primaryColor,
          body: NestedScrollView(
              headerSliverBuilder: (BuildContext context,bool InnerBoxIsScrolled){
                return [
                  new SliverAppBar(
                    pinned: true,
                    floating: true,
                    backgroundColor: Color(0xff232D36),
                    title: Text("WhatsApp",
                      style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xff9DA5AC)),),

                    actions: [
                      Icon(Icons.search_outlined,
                        size:30,
                        color: Color(0xffFAFFFF),),



                      Padding(
                        padding: EdgeInsets.only(left: 15,right: 15),
                        child: Icon(Icons.menu,
                          size:30,
                          color: Color(0xffFAFFFF),),
                      )
                    ],
                    bottom: TabBar( tabs: [
                      Tab(text: "CHATS",),
                      Tab(text: "STATUS",),
                      Tab(text: "CALLS",)
                    ],
                    labelColor: Color(0xff0CA996) ,
                    labelStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff0CA996)),
                      unselectedLabelColor: Color(0xff9DA5AC),
                      indicatorColor: Color(0xff0CA996),
                 ),

                  ),


                ];
              }, body:  TabBarView(
              children:[
                 list(),
                Text("Calls"),
                Text("Calls"),
              ]),
          ),
          
        )
        )
    );
  }
  Widget list(){
    return ListView.builder(
      itemCount: 10,
        itemBuilder: (context,index){
          return ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage:AssetImage("assets/user.jpg"),
            ),
            title: Text("Shashi Kha",
              style: TextStyle(color: Color(0xffC4C4C4),
                  fontWeight: FontWeight.bold),),
            subtitle: Text('Hey',
            style: TextStyle(color: Color(0xff889397)),),
            trailing: Text(currTime,
              style: TextStyle(fontSize: 13,
                color: Color(0xffD3DAE0)),),
          );
        });
  }
}
