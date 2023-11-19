import 'package:flutter/material.dart';

// using stateful widget

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    debugPrint('build method called');
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(5)),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Currency Converter'),
        backgroundColor: Colors.blueGrey,
        elevation: 0,
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.all(8.0),
              child: Text(
                result.toString(),
                style: const TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: const InputDecoration(
                  hintText: 'please enter amount in USD',
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: Icon(
                    Icons.monetization_on_outlined,
                  ),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: border,
                  focusedBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                  // signed: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  debugPrint('button clicked');
                  debugPrint(textEditingController.text);
                  // ensure there is a text in the textfield
                  if (textEditingController.text.isEmpty) {
                    return;
                  }
                  setState(() {
                    result = double.parse(textEditingController.text) * 5.5;
                  });
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50), 
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                ),
                child: const Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// Using ststeless wideget
// class CurrencyConverterMaterialPage extends StatelessWidget {
//   const CurrencyConverterMaterialPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     double result = 0;
//     final TextEditingController textEditingController = TextEditingController();
//     const border = OutlineInputBorder(
//       borderSide: BorderSide(
//         width: 2.0,
//         style: BorderStyle.solid,
//       ),
//       borderRadius: BorderRadius.all(Radius.circular(5)),
//     );

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Currency Converter'),
//         backgroundColor: Colors.blueGrey,
//         elevation: 0,
//       ),
//       backgroundColor: Colors.blueGrey,
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               padding: const EdgeInsets.all(8.0),
//               margin: const EdgeInsets.all(8.0),
//               child: Text(
//                 result.toString(),
//                 style: const TextStyle(
//                   fontSize: 55,
//                   fontWeight: FontWeight.bold,
//                   color: Color.fromARGB(255, 255, 255, 255),
//                 ),
//               ),
//             ),
//             const Padding(
//               padding: EdgeInsets.all(8.0),
//               child: TextField(
//                 style: TextStyle(
//                   color: Colors.black,
//                 ),
//                 decoration: InputDecoration(
//                   hintText: 'please enter amount in USD',
//                   hintStyle: TextStyle(
//                     color: Colors.black,
//                   ),
//                   prefixIcon: Icon(
//                     Icons.monetization_on_outlined,
//                   ),
//                   prefixIconColor: Colors.black,
//                   filled: true,
//                   fillColor: Colors.white,
//                   enabledBorder: border,
//                   focusedBorder: border,
//                 ),
//                 keyboardType: TextInputType.numberWithOptions(
//                   decimal: true,
//                   // signed: true,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: ElevatedButton(
//                 onPressed: () {
//                   debugPrint('button clicked');
//                   result = double.parse(textEditingController.text) * 5.5;
//                 },
//                 style: TextButton.styleFrom(
//                   backgroundColor: Colors.black,
//                   foregroundColor: Colors.white,
//                   minimumSize: const Size(double.infinity, 50),
//                   shape: const RoundedRectangleBorder(
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(5),
//                     ),
//                   ),
//                 ),
//                 child: const Text('Convert'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
