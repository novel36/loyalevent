import 'package:flutter/material.dart';

class NextEvent extends StatelessWidget {
  const NextEvent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.all(16),height: 300,color: Colors.grey,child: Column(children: [
      Container(color: Colors.blueGrey,height: 70,),SizedBox(height: 16,),
      Expanded(child: Container(color: Colors.blueGrey,child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
              
                children: [
                  Container(height: 90,width: 80,color: Colors.grey,
                  ), SizedBox(height: 6,),
                  Container(height: 20,width: 80,color: Colors.grey,
                  ),

                ],
              ), SizedBox(width: 32,), Column(
                children: [
                  Container(height: 90,width: 80,color: Colors.grey,
                  ), SizedBox(height: 6,),
                  Container(height: 20,width: 80,color: Colors.grey,
                  ),

                ],
              ),  SizedBox(width: 32,), Column(
                children: [
                  Container(height: 90,width: 80,color: Colors.grey,
                  ), SizedBox(height: 6,),
                  Container(height: 20,width: 80,color: Colors.grey,
                  ),

                ],
              ),  SizedBox(width: 32,), Column(
                children: [
                  Container(height: 90,width: 80,color: Colors.grey,
                  ), SizedBox(height: 6,),
                  Container(height: 20,width: 80,color: Colors.grey,
                  ),

                ],
              )
            ],
          )
        ],
      ),)),
      
  
    ],),);
  }
}
