

import 'package:flutter/material.dart';
import 'package:flutter_application_1/tabs/call.dart';
import 'package:flutter_application_1/tabs/camera.dart';
import 'package:flutter_application_1/tabs/chats.dart';
import 'package:flutter_application_1/tabs/status.dart';
import 'package:camera/camera.dart';




void main()
{

  

  


  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Color(0xff075e54),
      accentColor: Color(0xff25d366),


    ),
    home: new myapp(),
  ));
}


class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp>with SingleTickerProviderStateMixin {
  TabController ?_TabController;

  @override
  void initState() {
    _TabController = new TabController(length: 4, vsync: this,initialIndex: 1)..addListener(() {
      
      setState(() {
        
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff075e54),
        
        title: Text('WhatsApp',),
        actions: [
          IconButton(
            icon:Icon(Icons.search),
            color:Colors.white,
            onPressed: () {
              
            },
          ),

          IconButton(
            icon:Icon(Icons.more_vert),
            color:Colors.white,
            onPressed: () {
              
            },
          )
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: _TabController,
          tabs: [
            Tab(icon:(
              
                
            
               Icon(Icons.camera_alt,color: Colors.white,)),
          ), 
            Tab(text: 'CHATS',),
            Tab(text: 'STATUS',),
            Tab(text: 'CALLS',),
          ],
        ),
      ),

      body: new TabBarView(

        controller: _TabController,
        children: [

          new camera(),
          new chats(),
          new status(),
          new call(),

        ],
      ),

      floatingActionButton: _TabController!.index==0?
      
      FloatingActionButton(
        child: Icon(Icons.camera,color: Colors.white,),
        onPressed: () {
          
        },
        
      ):  _TabController!.index==1?
      
      FloatingActionButton(onPressed: (() {
        
      }),
      child: Icon(Icons.message,color: Colors.white,),
      

    ):_TabController!.index==2? Column(
      mainAxisAlignment: MainAxisAlignment.end,

      children: [
        SizedBox(
          height: 45.0,
          width: 45.0,
        ),
        FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: (){},
        
        child: Icon(Icons.edit,color: Colors.blueGrey,),),

        SizedBox(height: 10.0,),



         FloatingActionButton(onPressed: (){},
    
    child: Icon(Icons.camera_alt,color: Colors.white,),
    
    
    
    
    
    ),
      ],


    ):
      
    
   
    
    FloatingActionButton(onPressed: (){},
    child: Icon(Icons.add_call,color: Colors.white,),
    ),

    
    
    );
  }
}

