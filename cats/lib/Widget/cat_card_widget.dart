
import 'package:cats/Widget/data/cat.dart';
import 'package:cats/car_details.dart';
import 'package:flutter/material.dart';

class CatCards extends StatelessWidget {

  final Cat cat;

  const CatCards({
    super.key, required this.cat,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder:(context) {return CatDetails(cat: cat);}));
      },
      child: Card
      (
          child: Column
          (
            children:
            [
            Expanded
            (
              child:Image.network(cat.imageLink,
              width: double.infinity,
              fit: BoxFit.cover,
              ),
              ), 
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(cat.name,style: const TextStyle
                (
                  fontSize:16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 58, 133, 183),
                ),
                textAlign: TextAlign.center,
                ),
              ) ,
            ],
          ),
      ),
    );
  }
}