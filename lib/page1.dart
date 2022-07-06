// import 'dart:ffi';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app1/page2.dart';
import './page2.dart';
class Page1 extends StatelessWidget {
  const Page1 ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      primaryColor:Colors.orange,  
      ),
    home: Page1Screen(),
    routes: {
      '/page2':(context) => Page2()
    },
    );
  }
}

class Page1Screen extends StatelessWidget {
  const Page1Screen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.blue,
      //appBar: AppBar(
        //backgroundColor:  Colors.transparent,
        //elevation: 0,
   // ),

    body:
     SafeArea(
      child:Container(

        decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.blue,
                ],

              ),
            ),
      child:Center(
      child: Column(
       // mainAxisAlignment: MainAxisAlignment.spaceAround,
      //  mainAxisSize: MainAxisSize.min,
        children: [  
          Spacer(flex: 2),





          ElevatedButton(
            onPressed: ()=>{
               Navigator.pushNamed(context, '/page2')
            }, 
            child: Text('Video to Text'),
            style: ElevatedButton.styleFrom(
              primary:Colors.black,
              onPrimary: Colors.white,
              onSurface: Colors.black,
              padding: EdgeInsets.all(10.0),
              textStyle: TextStyle(fontSize: 30),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
        
              ),           
            ),
            
          ),
            Spacer(flex: 1),
            ElevatedButton(
            onPressed: ()=>{
               Navigator.pushNamed(context, '/page2')
            }, 
            child: Text('Audio to Text'),
            style: ElevatedButton.styleFrom(
              primary:Colors.black,
              onPrimary: Colors.white,
              onSurface: Colors.black,
              padding: EdgeInsets.all(10.0),
               textStyle: TextStyle(fontSize: 30),     
               shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
                
               ),      
            ),
          ),
             Spacer(flex: 2)

        ]
      ),
        ),
    ),
     ),
    );
    
  }
}