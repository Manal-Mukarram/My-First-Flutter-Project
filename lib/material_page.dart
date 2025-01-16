import 'package:flutter/material.dart';

class MyMaterialPage extends StatelessWidget {
  const MyMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    const myBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(50),
      ),
      borderSide: BorderSide(color: Colors.white, width: 1),
    );
    return const Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hello World',
                style: TextStyle(color: Colors.white),
              ),
              TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: 'Please enter the amount in INR here.',
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white30,
                    prefixIcon: Icon(
                      Icons.currency_rupee,
                      color: Color.fromARGB(255, 162, 195, 223),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    focusedBorder: myBorder),
              ),
            ],
          ),
        ));
  }
}
