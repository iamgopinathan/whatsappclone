import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/callmodel.dart';
import 'package:flutter_application_1/model/chatmodel.dart';

class call extends StatelessWidget {
  const call({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
  itemBuilder: (context, index) => new Column(




    children: [
      new Divider(height: 0.1,),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: new ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            backgroundImage: NetworkImage(calldata[index].pic),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(calldata[index].name,style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
              
              ),

              

            

             new Icon(
                
               Icons.call,color: Theme.of(context).primaryColor,),

            ],
          ),
          subtitle: Text(calldata[index].time,style: TextStyle(color: Colors.grey,fontSize: 12),),
        ),
      )
    ],
  ),
    itemCount: calldata.length,);
  }
  
}