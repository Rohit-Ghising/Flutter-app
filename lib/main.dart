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
     theme: ThemeData(primarySwatch: Colors.purple
     ),


   home:DashBoardScreen() ,


     );
   }
 }
 class DashBoardScreen extends StatefulWidget {
   const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('Hello')
       ),
       body:Column(
         children: [ AnimatedContainer(
           width: 200,
       height: 100,
           duration: Duration(seconds: 2),
         ),
         ElevatedButton(onPressed: (){}, child: Text("CLick"))],
       )
         

     );

   }
}
 

 
   
 
