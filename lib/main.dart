import 'package:flutter/material.dart';
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
     return Scaffold(
     appBar: AppBar(
     title: Text('DAshBoard'),
     ),
   body: Container(
   width: double.infinity,
   height: double.infinity,
   child: Center(
     child: Container(
       decoration: BoxDecoration(
         color: Colors.blue,
         borderRadius: BorderRadius.circular(21),
           border: Border.all(width: 4,
       color: Colors.black),
         boxShadow: [BoxShadow(
           blurRadius: 11,
           spreadRadius: 4
         )]

         
       ),
       width: 150,
       height: 150,
     
     ),
   ),),
     );
   }
 }

