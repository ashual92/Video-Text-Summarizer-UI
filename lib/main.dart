// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './page1.dart';

void main() {
runApp(MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      primaryColor:Colors.orange,  
      ),
    home: HomeScreen(),
    routes: {
      '/page1':(context) => Page1()
    },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    backgroundColor: Colors.blue,
    //appBar: AppBar(
      //backgroundColor: Colors.transparent,
      
      //elevation: 0,
      
    //),
    body:
     SafeArea(
          child: Container(
            
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.blue,
                ],
            
              ),
            ),
            child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Swift',style: TextStyle(
                  color: Colors.black,
                  fontSize:60,
                  fontWeight: FontWeight.bold,
                ),
               ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.black,
                  shape: CircleBorder()
                  ),
                
                  onPressed: ()=>{
                    Navigator.pushNamed(context, '/page1')
                }, 
                child: Text('>',style: TextStyle(
                  color: Colors.white,
                  fontSize: 55,
              
                ),
                ),
              
                ),
               ],

              ),
            ),
          ),
        ),
      );
  
  }
}