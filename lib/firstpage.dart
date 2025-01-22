import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget{
  @override
  State<Firstpage> createState()=> _firstpageState();
}
class _firstpageState extends State<Firstpage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Employee Details",style: TextStyle(fontSize: 30,color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),

    floatingActionButton: FloatingActionButton(
      backgroundColor: Colors.amber,
      onPressed: (){
        showBottomSheet(context: context,
        builder: (BuildContext context){
          return Container(
            width: 410,
          );
        });
      },
      child: Icon(Icons.add,color: Colors.white,size: 40,),
    ),
    );
  }
}