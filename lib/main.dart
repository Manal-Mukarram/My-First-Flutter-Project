import 'package:currency_converter/cupertino_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'material_page.dart';

void main() {
  runApp(const MyCupertinoApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyMaterialPage());
  }
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(home: MyCupertinoPage());
  }
}
