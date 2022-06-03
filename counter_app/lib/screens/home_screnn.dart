

import 'package:flutter/material.dart';

class HomeScrenn extends StatelessWidget{
  const HomeScrenn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {  

    TextStyle fontSize = const TextStyle(fontSize: 30);  
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        elevation: 10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,        
          children: [
            Text('Clicks Counter', style: fontSize),
            Text('0', style: fontSize)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.plus_one),
        onPressed: null,
        
      ),      
    );
  }

}