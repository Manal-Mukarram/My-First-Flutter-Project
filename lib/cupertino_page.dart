import 'package:flutter/cupertino.dart';

class MyCupertinoPage extends StatefulWidget {
  const MyCupertinoPage({super.key});

  @override
  State<MyCupertinoPage> createState() => _MyCupertinoPageState();
}

class _MyCupertinoPageState extends State<MyCupertinoPage> {
  double convertedValue = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const myBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(50),
      ),
      borderSide: BorderSide(color: CupertinoColors.white, width: 1),
    );
    return CupertinoPageScaffold(
      backgroundColor: const Color.fromARGB(255, 150, 149, 149),
      navigationBar: const CupertinoNavigationBar(
        backgroundColor:  Color.fromARGB(255, 116, 115, 115),
        middle:  Text('Currency Converter'),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // CONVERTED VALUE
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  CupertinoIcons.,
                  color: Colors.white,
                  size: 35,
                ),
                Text(
                  '₹ $convertedValue.toStringAsFixed(2)',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
              ],
            ),

            // INR AMOUNT TEXTFIELD
            Container(
              padding: const EdgeInsets.fromLTRB(100, 15, 100, 15),
              child: CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                decoration: const InputDecoration(
                  hintText: 'Please enter the amount in USD here.',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 95, 95, 95)),
                  filled: true,
                  fillColor: Colors.white30,
                  prefixIcon: Icon(
                    Icons.monetization_on_outlined,
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
                onPressed: () {
                  setState(() {
                    convertedValue =
                        double.parse(textEditingController.text) * 81;
                  });
                },
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
