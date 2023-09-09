import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main ()
{
  runApp(const Myapp());
}

class Myapp extends StatelessWidget{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(home: HomeActivity());
  }

}
class HomeActivity extends StatelessWidget
{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: RichText(text: TextSpan(text: "Home" , style: TextStyle( fontSize: 25, fontWeight: FontWeight.bold)),) ,
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search),)
        ],
        elevation: 70,
        toolbarHeight: 100,
        backgroundColor: Colors.green,

        leading: IconButton (icon: Icon(Icons.add_business), onPressed: (){},),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(text:TextSpan(text: "This is mod 5 Assignment " , style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.black))),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(text:TextSpan(text: "My " , style: TextStyle(fontSize: 25, color: Colors.red)
              ,children: [
                    TextSpan(text: "phone" , style: TextStyle(fontSize: 18, color: Colors.blue)
                    ,children: [
                      TextSpan(text: " name " , style: TextStyle(fontSize: 18 , color: Colors.purple , fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(text: 'Your phone name' ,style: TextStyle(fontSize: 25, color: Colors.amber))
                      ])

                        ])
                ]

              )),
            ],
          ),
        ],

        )
    );
  }




}