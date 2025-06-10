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
   var  wtController = TextEditingController();
   var ftController  = TextEditingController();
   var inController  = TextEditingController();
   var result = "";
   var bgColor;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('Hello')
       ),
       body:Center(
         child: Container(
           width: 300,

           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text("BMI", style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),),
               SizedBox(height: 11,),
               TextField( controller:wtController ,
               decoration: InputDecoration(label:Text('Enter you weight in Kg'),prefixIcon: Icon(Icons.line_weight)

               ),
                 keyboardType: TextInputType.number,

               ),
               SizedBox(height: 11,),

               TextField( controller:ftController ,
                 decoration: InputDecoration(label:Text('Enter you height in feet'),prefixIcon: Icon(Icons.height)

                 ),
                 keyboardType: TextInputType.number,

               ),
               SizedBox(height: 11,),
               TextField( controller:inController ,
                 decoration: InputDecoration(label:Text('Enter you height in Inch'),prefixIcon: Icon(Icons.line_weight)

                 ),
                 keyboardType: TextInputType.number,


               ),

               SizedBox(height: 11,),
               ElevatedButton(onPressed: (){
                 var wt = wtController.text.toString();
                 var inch = inController.text.toString();
                 var ft = ftController.text.toString();

                 if (wt!=""&&inch!=""&& ft!="" ){
                   var iWt = int.parse(wt);
                   var iInch = int.parse(inch);
                   var iFt = int.parse(ft);
                   var tInch = (iFt*12) + iInch;
                   var tCm = tInch*2.54;
                   var tMtr = tCm/100;
                   var bmi = iWt/(tMtr*tMtr);
                   var msg = "";
                   if (bmi>25) { msg ='Ypu re over weight'
                 ;
                     bgColor = Colors.orange;

                   }
                     else if (bmi<18){msg = "your re underweight";
                       bgColor= Colors.red;

                   }
                     else {
                      msg= "ypu looks heakthy";
                      bgColor = Colors.green;

                   }

                   result =" $msg\n Your BMI is : ${bmi .toStringAsFixed(2)}";
                   setState(() {

                   });



                 }
                 else{
                   result ="Please fill all the field";

                   setState(() {

                   });

                 }

               }, child: Text('Calculate')),
               SizedBox(height: 11,),
               Text(result)


             ],
           ),
         ),
       )
         

     );

   }
}
 

 
   
 
