import 'package:flutter/material.dart';
import 'package:diet_batting/screens/battle_list.dart';

class Home extends StatelessWidget{
  const Home({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(

      //backgroundColor: Colors.blueAccent,
      body: Center(
        child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children:[
            ElevatedButton(
              child:const Text('배틀 신청'),
              onPressed: (){},
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child:const Text('배틀 리스트'),
              onPressed: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => battle_list()),
                );
              },
            )
          ]
        )

      )
    );
  }

}