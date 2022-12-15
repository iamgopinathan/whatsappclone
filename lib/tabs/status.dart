import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/statusmodel.dart';

class status extends StatelessWidget {
  const status({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Row(
          children: [


            Expanded(child: ListTile(
leading: Container(

  width: 50.0,
  height: 50.0,
  child: Stack(
  
    children: [
      ClipOval(
      
        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6zes53m4a_2VLTcmTn_bHk8NO5SkuWfcQbg&usqp=CAU",width: 50,height: 50,)
      ),

      Align(
        
        alignment: Alignment.bottomRight,
        child: Container(
          
          width: 20.0,
          height: 20.0,
          decoration: BoxDecoration(
          
            
            borderRadius: BorderRadius.circular(20.0),
             color:Theme.of(context).accentColor,
          

            
            
          ),
          child: Icon(Icons.add,size: 15.0,),
         
      
        ),
        
      ),
    ],
  ),
),

title: Text('My Status',style: TextStyle(fontWeight: FontWeight.bold,),),
subtitle: Text('Tab to add status update'),


            ),
            )
          ],
        ),

        SizedBox(height: 30.0,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
          width: double.infinity,
          color: Colors.grey.shade200,

          child: Text('Recent Update',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey.shade500),),
        ),
        
        
        ),


        Expanded(child: ListView.builder(
          itemCount: statusdata.length,
          itemBuilder: (context, index) => new Column(
            children: [
              new Divider(height: 0.1,),

              new ListTile(
                leading: CircleAvatar(

                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(statusdata[index].pic),
                ),
                title: Row(
                  children: [
                    new Text(statusdata[index].name,style: TextStyle(
                      fontSize: 13.0,fontWeight: FontWeight.bold,
                    ),),

                  ],
                ),
                subtitle: Container(
                  child: Text(statusdata[index].time,style: TextStyle(color: Colors.grey,fontSize: 12),),
                )
              )
            ],
          )
          
          ),
        )


        

        

      ],
    );
  }
}