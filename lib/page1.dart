import 'package:flutter/material.dart';
import './page2.dart';
class Page1 extends StatelessWidget {
  const Page1 ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      primaryColor:Colors.orange,  
      ),
    home: Page1Screen(),
    routes: {
      '/page2':(context) => Page2()
    }
       );
  }
}
class Page1Screen extends StatelessWidget {
  const Page1Screen({ Key? key }) : super(key: key);

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



     Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         Container(
          padding: EdgeInsets.fromLTRB(40, 100, 40, 40),
          
          child: Text('Swift helps you to easily get the summary of any video that you put into it. So don’t waste your time watching lengthy and boring lectures. Just insert the video URL and BAAAAM!!! ',
          style: TextStyle( fontFamily:"roboto",
                     color: Colors.white,
                     fontSize:30,
                     fontStyle: FontStyle.italic,
                     
                ),
          textAlign: TextAlign.justify,
          ),
           
         ),
       ],
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
           duration: Duration(microseconds: 100))
          ]
             ),
    );
  }
}      
         
                 
                    