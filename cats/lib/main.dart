import 'package:cats/Widget/data/all_cats.dart';
import 'package:cats/Widget/data/cat.dart';
import 'package:cats/home.dart';
import 'package:flutter/material.dart';


final cats = allCats.map<Cat>((jsonCat)=>Cat.fromJson(jsonCat)).toList();


void main() {
  runApp(const MyCats());
}

class MyCats extends StatelessWidget
{
  const MyCats({super.key});

  @override
  Widget build(BuildContext context) {
      return const MaterialApp(home: Home(),
      debugShowCheckedModeBanner: false,
      );
  }

}
