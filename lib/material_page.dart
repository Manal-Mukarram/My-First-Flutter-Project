import 'package:flutter/material.dart';

class MyMaterialPage extends StatelessWidget {
  const MyMaterialPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: ColoredBox(
          color: Color.fromRGBO(255, 0, 0, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Hello World')],
          )),
    ));
  }
}
