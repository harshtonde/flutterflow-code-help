// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';

class CurrencyTextField extends StatefulWidget {
  const CurrencyTextField({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _CurrencyTextFieldState createState() => _CurrencyTextFieldState();
}

class _CurrencyTextFieldState extends State<CurrencyTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        inputFormatters: [
          CurrencyTextInputFormatter(
            locale: 'en_IN)',
            decimalDigits: 0,
            // rupee symbol
            //symbol: '\u{20B9}',
          ),
        ],
        decoration: InputDecoration(
          hintText: 'Enter your text',
        ),
        onChanged: (value) {
          setState(() {
            FFAppState().update(
              () {
                FFAppState().currencyOutput = value;
              },
            );
          });
        },
      ),
    );
  }
}
