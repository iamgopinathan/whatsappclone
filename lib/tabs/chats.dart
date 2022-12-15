import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/chatmodel.dart';

class chats extends StatelessWidget {
  const chats({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder:((context, index) => new Column(
        children: [
          new Divider(height: 0.1,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: new ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(chatsdata[index].pic),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(chatsdata[index].name,style: TextStyle(fontSize: 13.0,fontWeight: FontWeight.bold),),

                  Text(chatsdata[index].time,style: TextStyle(fontSize: 13.0,color: Colors.grey),)
                ],
              ),

              subtitle: Text(chatsdata[index].msg,style: TextStyle(fontSize: 11.0,color: Colors.grey),),

              
            ),
          ),
          
        
        ],
      )) ,
      itemCount: chatsdata.length,


    );
  }
}