

import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 10;

  void increase(){
    counter++;
    setState(() {});
  }

  void decrease(){
    counter--;
    setState(() {});
  }

  void reset(){
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {  

    TextStyle fontSize = const TextStyle(fontSize: 30);  
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        elevation: 10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,        
          children: [
            Text('Clicks Counter', style: fontSize),
            Text('$counter', style: fontSize)
          ],
        ),
      ),      
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingButton(increaseFn: increase, decreaseFn: decrease,resetFn: reset)      
    );
  }
}

class CustomFloatingButton extends StatelessWidget {

  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;
  
  const CustomFloatingButton({
    Key? key, required this.increaseFn, required this.decreaseFn, required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,                
      children: [
        
        FloatingActionButton(
          child: const Icon(Icons.plus_one),
          onPressed: () => increaseFn(),
          
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure),
          onPressed: () => resetFn(),
          
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_outlined),
          onPressed: () => decreaseFn()
          
        ),
      ],
    );
  }
}