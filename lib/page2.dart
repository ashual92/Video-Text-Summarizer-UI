

import 'package:flutter/material.dart';


class Page2 extends StatelessWidget {
  const Page2 ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      primaryColor:Colors.orange,  
      ),
    home: Page2Screen(),
    );
  }
}
class Page2Screen extends StatelessWidget {
  const Page2Screen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
      body:
       Stack(
          children: [
          
             Image.asset(
            'assets/images/RDT1-01.jpeg',
            width: 500,
            height: 1000,
            fit: BoxFit.fill,
          ),
     
      
  Container(
      padding: EdgeInsets.fromLTRB(50, 150, 30, 30),
      child: Text('Enter the video URL',
             
      style: TextStyle( fontFamily:"Caveat",
                 color: Colors.white,
                 fontSize:40,
                 fontWeight: FontWeight.bold,
                 
            ),
      textAlign: TextAlign.justify,
      ),
     ),



Align(
  alignment:Alignment.center,
    child:
    TextField(
    
    decoration: InputDecoration(
    fillColor: Colors.white,
    filled: true,
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
    hintText: "www.youtube.com",
    labelText: "URL",
    icon: Icon(Icons.ondemand_video_sharp,color: Colors.white),
    labelStyle: TextStyle(fontSize:20 ),
    
     ),
  
  keyboardType: TextInputType.url,
  textInputAction: TextInputAction.done,
  
),
),



Align(
   alignment:Alignment.bottomCenter,
    child:

  TextButton(
           style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 40,vertical: 16),
              textStyle: TextStyle(fontSize: 28),
              primary: Colors.white,
            ),
          child: Text('>',style: TextStyle(
                  fontFamily: "Londrina",
                  color: Colors.grey.shade300,
                  fontSize:80,
                  fontWeight: FontWeight.bold,
                ),
                ),
             onPressed: ()=>{
           Navigator.pushNamed(context, '/page2') 
          },
           ),
),


AnimatedPositioned(
          top: 550,
          left: 140,
          height: 70,
          child: Image.asset('assets/images/swift.png'),
           duration: Duration(microseconds: 200))
  


          ],
       ),
      );
  
  }
}