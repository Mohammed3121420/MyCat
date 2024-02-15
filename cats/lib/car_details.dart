import 'package:cats/Widget/cat_detail_widget.dart';
import 'package:cats/Widget/data/cat.dart';
import 'package:flutter/material.dart';

class CatDetails extends StatelessWidget {
    final Cat cat;
  const CatDetails({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar
      
      (
        title: Text(cat.name,style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),),
        backgroundColor: const Color.fromARGB(255, 141, 239, 248),
        
      ),
      body: CatDetailsWidget(cat: cat,),
    );
  }
}
