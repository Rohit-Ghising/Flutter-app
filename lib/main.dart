import 'package:flutter/material.dart';
import 'package:my_app/widgets/roun.dart';


 void main(){
   runApp(FlutterApp());
 }
 class  FlutterApp   extends StatelessWidget {
   const FlutterApp({super.key});

   @override
   Widget build(BuildContext context) {
     return MaterialApp(

     title: "Flutter App",
     theme: ThemeData(primarySwatch: Colors.cyan),

   home:DashBoardScreen() ,


     );
   }
 }

 class DashBoardScreen  extends StatelessWidget {
   const DashBoardScreen({super.key});

   @override
   Widget build(BuildContext context) {
     var name = ['rohitt','sdbyugb','gkuyasgdu','gyusgyf','byyusdaguy','hjahu'];
     var time = DateTime.now();
     return Scaffold(
     appBar: AppBar(  
       
     title: Text('DAshBoard',
     ),
     ),
   body: Button( btnName: 'Click', icon: Icon(Icons.lock), callBack: (){

   },)


     );
   }
 }

