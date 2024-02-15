import 'package:cats/Widget/cat_card_widget.dart';
import 'package:cats/main.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar
      (
        title: const Center(
          child: Text
          (
            "Type of cats",
            style: TextStyle
            (
              fontFamily: AutofillHints.namePrefix
            ),          
            ),
        ),
          actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.favorite, color: Color.fromARGB(255, 240, 20, 5)))],
          backgroundColor: const Color.fromARGB(255, 141, 239, 248),
      ),
      body: GridView.builder(
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: cats.length,
        itemBuilder: (context, index) {
          final cat =cats[index];
          return CatCards(cat: cat,);
        },
         )
    );
  }
}
