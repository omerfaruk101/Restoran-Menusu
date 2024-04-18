import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:restoranmenusu/screens/home_screen/home_screen.dart';

void main() async{


  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: MyHomePage()
    );
  }
}
class MyHomePage extends StatefulWidget {


  
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

 final _firestore=FirebaseFirestore.instance;
 
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:HomeScreen(),
      )
   
  
   
              
            
            
      
    
          
          
          
          
          
          
          
          
          
          
          
          
          
          
         
      
    ;
  }
}
