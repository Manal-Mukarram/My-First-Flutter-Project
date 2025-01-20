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
    return CupertinoPageScaffold(
      backgroundColor: Color.fromARGB(255, 119, 117, 117),
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: Color.fromARGB(255, 116, 115, 115),
        middle: Text('Currency Converter'),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // CONVERTED VALUE
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '₹ ${convertedValue.toStringAsFixed(2)}',
                  style: const TextStyle(
                    color: CupertinoColors.white,
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
                decoration: BoxDecoration(
                  border: Border.all(
                    color: CupertinoColors.white,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                prefix: const Icon(
                  CupertinoIcons.money_dollar,
                  color: Color.fromARGB(255, 255, 255, 255),
                  size: 35,
                ),
                placeholder: 'Please enter the amount is USD',
                placeholderStyle: const TextStyle(
                  color: CupertinoColors.lightBackgroundGray,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),

            // CONVERTER BUTTON
            CupertinoButton(
              onPressed: () {
                setState(() {
                  convertedValue =
                      double.parse(textEditingController.text) * 81;
                });
              },
              padding: const EdgeInsets.all(10),
              color: CupertinoColors.white,
              borderRadius: BorderRadius.circular(100),
              child: const Icon(
                CupertinoIcons.arrow_2_circlepath,
                size: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
