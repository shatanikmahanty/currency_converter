import 'package:currency_converter/data/current_currency.dart';
import 'package:currency_converter/views/widgets/digit_button.dart';
import 'package:flutter/material.dart';

class Amount extends StatelessWidget {
  const Amount({
    required Color color,
    required Color textColor,
    required CurrentCurrency currentCurrency,
    Key? key,
  })  : this._color = color,
        this._textColor = textColor,
        this._currentCurrency = currentCurrency,
        super(key: key);

  final Color _color;
  final Color _textColor;
  final CurrentCurrency _currentCurrency;

  @override
  Widget build(BuildContext context) {
    final backButton = Align(
      alignment: Alignment.center,
      child: FloatingActionButton(
        backgroundColor: _textColor,
        child: Icon(
          Icons.backspace,
          size: 24,
          color: _color,
        ),
        onPressed: () {},
      ),
    );

    final List<Widget> digitButtons = [
      DigitButton(
        text: "1",
        color: _textColor,
        textColor: _color,
        onPressed: () {},
      ),
      DigitButton(
        text: "2",
        color: _textColor,
        textColor: _color,
        onPressed: () {},
      ),
      DigitButton(
        text: "3",
        color: _textColor,
        textColor: _color,
        onPressed: () {},
      ),
      DigitButton(
        text: "4",
        color: _textColor,
        textColor: _color,
        onPressed: () {},
      ),
      DigitButton(
        text: "5",
        color: _textColor,
        textColor: _color,
        onPressed: () {},
      ),
      DigitButton(
        text: "6",
        color: _textColor,
        textColor: _color,
        onPressed: () {},
      ),
      DigitButton(
        text: "7",
        color: _textColor,
        textColor: _color,
        onPressed: () {},
      ),
      DigitButton(
        text: "8",
        color: _textColor,
        textColor: _color,
        onPressed: () {},
      ),
      DigitButton(
        text: "9",
        color: _textColor,
        textColor: _color,
        onPressed: () {},
      ),
      DigitButton(
        text: ".",
        color: _textColor,
        textColor: _color,
        onPressed: () {},
      ),
      DigitButton(
        text: "0",
        color: _textColor,
        textColor: _color,
        onPressed: () {},
      ),
      backButton,
    ];

    return Scaffold(
      backgroundColor: _color,
      body: SafeArea(
        child: GridView.builder(
          itemCount: digitButtons.length,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: MediaQuery.of(context).size.width / 3,
            mainAxisExtent: MediaQuery.of(context).size.height / 9,
          ),
          itemBuilder: (context, index) {
            return digitButtons[index];
          },
        ),
      ),
    );
  }
}