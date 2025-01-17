import 'package:flutter/material.dart';

class MyMaterialPage extends StatelessWidget {
  const MyMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    double convertedValue = 0;
    final TextEditingController textEditingController = TextEditingController();
    const myBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(50),
      ),
      borderSide: BorderSide(color: Colors.white, width: 1),
    );
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 150, 149, 149),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 116, 115, 115),
        centerTitle: true,
        title: const Text('Currency Converter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // CONVERTED VALUE
            Text(
              convertedValue.toString(),
              style: const TextStyle(color: Colors.white, fontSize: 40),
            ),

            // INR AMOUNT TEXTFIELD
            Container(
              padding: const EdgeInsets.fromLTRB(100, 15, 100, 15),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                decoration: const InputDecoration(
                  hintText: 'Please enter the amount in INR here.',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 95, 95, 95)),
                  filled: true,
                  fillColor: Colors.white30,
                  prefixIcon: Icon(
                    Icons.currency_rupee,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  focusedBorder: myBorder,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),

            // CONVERTER BUTTON
            Container(
              padding: const EdgeInsets.fromLTRB(30, 15, 30,
                  15), // added padding in case I need to use button in rectangular shape
              child: ElevatedButton(
                onPressed: () => convertedValue =
                    double.parse(textEditingController.text) * 81,
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                  foregroundColor: MaterialStatePropertyAll(
                    Color.fromARGB(255, 0, 0, 0),
                  ),
                  shape: MaterialStatePropertyAll(CircleBorder()),
                  elevation: MaterialStatePropertyAll(5),
                  shadowColor: MaterialStatePropertyAll(
                    Color.fromARGB(255, 0, 0, 0),
                  ), // in case bg is black, use white shadow
                  iconSize: MaterialStatePropertyAll(50),
                ),
                child: const Icon(Icons.change_circle),
              ),
            )
          ],
        ),
      ),
    );
  }
}
