import 'package:flutter/material.dart';
import 'package:components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
         children:const [
           CustomCardType1(),
           SizedBox(height: 10),
           CustomCardType2(name: 'Atardecer', imageUrl: 'https://mymodernmet.com/wp/wp-content/uploads/2022/02/international-landscape-photographer-awards-20.jpeg',),
           SizedBox(height: 10),
           CustomCardType2(imageUrl: 'https://fotoarte.com.uy/wp-content/uploads/2019/03/Landscape-fotoarte.jpg',),
           SizedBox(height: 10),
           CustomCardType2(imageUrl: 'https://predios.com.co/wp-content/uploads/2021/06/travel-landscape-01.jpg',),
           SizedBox(height: 50),
         ]
      ),
    );
  }
}
