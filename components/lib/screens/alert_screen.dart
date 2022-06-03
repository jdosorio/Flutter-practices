import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
          child: ElevatedButton(
            onPressed: null, 
            child: Text('Mostrar Alerta')
          ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon( Icons.close)
      ),
    );
  }
}