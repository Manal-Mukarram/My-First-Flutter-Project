import 'package:flutter/material.dart';

class MyMaterialPage extends StatelessWidget {
  const MyMaterialPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hello World',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ));
  }
}
