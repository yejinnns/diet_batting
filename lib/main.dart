import 'package:flutter/material.dart';

class MainPage extends StatelessWidget{
  const MainPage({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(

      //backgroundColor: Colors.blueAccent,
      body: Center(
        child: ElevatedButton(
          child:const Text('배틀 신청'),
          onPressed: (){},
        )
      )
    );
  }

}