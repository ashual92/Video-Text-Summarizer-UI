import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2 ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      backgroundColor: Colors.blue,
     // appBar: AppBar(
       // backgroundColor: Colors.blue,
       // elevation: 0,
      //),
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
      ),
     ),
    );
  }
}
