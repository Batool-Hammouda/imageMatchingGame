import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: const Color.fromARGB(255, 100, 111, 174),
      appBar: AppBar(
        title: Text("Game"),
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 63, 82, 177),
      ),
      body:ImageScreen() ,
    )
  ));
}


class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  int leftImageNumber=4;
  int rightImageNumber=3;
void randomValues(){
  leftImageNumber= Random().nextInt(8)+1;
  rightImageNumber=Random().nextInt(8)+1;
}

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(leftImageNumber==rightImageNumber?
        'Congrats!!!':
        "Try Again!!!",
        style: TextStyle(
          fontSize: 30.0,
          color: Colors.white
        ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: (){
                    setState(() {
                     randomValues();
                    });
                  },
                  child: Image.asset(
                    'assets/image-$leftImageNumber.png' ,
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: (){
                    setState(() {
                      randomValues();
                    });
                  },
                  child: Image.asset(
                    'assets/image-$rightImageNumber.png' ,
                  ),
                ),
              ),
          ],
          ),
        )
      ],
    ) ;
  }
}