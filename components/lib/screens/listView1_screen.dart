import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {

  final options = const ['Uno', 'dos', 'tres'];
  const ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View 1')        
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, i) => ListTile(
          title: Text(options[i]),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        separatorBuilder: ( _ , __ ) => const Divider(),
      ),
    );
  }
}