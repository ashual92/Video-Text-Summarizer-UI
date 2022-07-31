
import 'package:flutter/material.dart';
import './page1.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      primaryColor:Colors.orange,  
      ),
       home: HomeScreen(),
       routes: {
        '/page1':(context) =>Page1()
       },
    );
  }
  }
class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
         body:
         Stack(
          
          children: [
             Image.asset(
            'assets/images/RDT1.jpg',
            width: 500,
            height: 1000,
            fit: BoxFit.fill,
          ),
        
       
            
      const  Positioned.fill(child: Align(
          alignment:Alignment.center,
          child:
                 Text('Swift',style: TextStyle(
                  fontFamily: "Londrina",
                  color: Colors.white,
                  fontSize:80,
                  fontWeight: FontWeight.bold,
                ),
               ),
        ),
        ),


         AnimatedPositioned(
          top: 500,
          left: 145,
          height: 70,
          child: Image.asset('assets/images/swift.png'),
           duration: Duration(microseconds: 200))
  
          ],
         ),
         floatingActionButton: FloatingActionButton(
          onPressed: ()=>{
           Navigator.pushNamed(context, '/page1') 
          },
           child: Icon(
            Icons.arrow_forward_outlined,
            color: Colors.white,
         ),
         backgroundColor: Colors.indigo.shade900,
         ),
    
    );
        

  }
}