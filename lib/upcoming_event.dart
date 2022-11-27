import 'package:flutter/material.dart';

class UpcomingEvent extends StatelessWidget {
  const UpcomingEvent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.all(8.0),height: 700,color: Colors.grey,
    child: GridView.count(crossAxisCount: 2,mainAxisSpacing: 8.0,crossAxisSpacing: 8.0,
    childAspectRatio: 2.0,children: [
      Card(color: Colors.red,child: Row(children: [
        Container(color: Colors.green,width: 300,),
        Expanded(flex: 2,child: Container(color: Colors.blue,))
      ],),),
      Card(color: Colors.red,child: Row(children: [
        Container(color: Colors.green,width: 300,),
        Expanded(flex: 2,child: Container(color: Colors.blue,))
      ],),),Card(color: Colors.red,child: Row(children: [
        Container(color: Colors.green,width: 300,),
        Expanded(flex: 2,child: Container(color: Colors.blue,))
      ],),),Card(color: Colors.red,child: Row(children: [
        Container(color: Colors.green,width: 300,),
        Expanded(flex: 2,child: Container(color: Colors.blue,))
      ],),),
      
      
 
    ],),
    );
  }
}