import 'package:cats/Widget/data/cat.dart';
import 'package:flutter/material.dart';

class CatDetailsWidget extends StatefulWidget {
  final Cat cat;
  const CatDetailsWidget({
    super.key, required this.cat,
  });

  @override
  State<CatDetailsWidget> createState() => _CatDetailsWidgetState();
}

class _CatDetailsWidgetState extends State<CatDetailsWidget> {

  bool isNameColored=false;
  
  @override
  Widget build(BuildContext context) {
    return Column
    (
      mainAxisAlignment: MainAxisAlignment.center,
      children: 
      [
        Image.network(widget.cat.imageLink),
        Text(widget.cat.name,style: TextStyle(
          fontSize: 20,
          fontWeight:FontWeight.bold,
          color: isNameColored ? Colors.deepPurple :Colors.black

          ),),
        //cat info
        Text("Origin: ${widget.cat.origin}"),
        Text("MaxWeight: ${widget.cat.maxWeight}"),
        Text("minWeight: ${widget.cat.minWeight}"),
        Text("Length: ${widget.cat.length}"),

        ElevatedButton(onPressed: (){
          setState(() {
            isNameColored = !isNameColored;
          });
        }, child: const Text("Change Name Color"))
      ],
    );
  }
}