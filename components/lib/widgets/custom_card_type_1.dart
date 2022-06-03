import 'package:components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo, color: AppTheme.primary,),
            title: Text('soy titulo'),
            subtitle: Text('Aliquip mollit laborum Lorem amet ea sunt labore. Sunt dolore qui aliqua eu dolor minim sit aliquip Lorem. Amet amet occaecat proident aliquip officia consectetur.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {}, 
                  child: const Text('Cancel')                  
                ),
                TextButton(
                  onPressed: () {}, 
                  child: const Text('Ok')
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}