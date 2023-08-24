import 'package:flutter/material.dart';

class battle_list extends StatelessWidget{
  final List<String> items = ['Item1', 'Item2'];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text('Battle List'),
      ),
      body: ListView.builder(
          itemCount:items.length,
          itemBuilder: (context, index){
            return ListTile(
              title:Text(items[index]),
            );
          }
      ),
    );
  }
}