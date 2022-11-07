import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({super.key});

  final String _name = 'Andre Burke';
  final String _jobTitle = 'Software Engineer';
  final Color _textColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return _titleStack(_name, _jobTitle, _textColor);
  }
}

Image _titleImage() {
  return Image.asset(
    'images/main_image.jpg',
    width: 600,
    height: 240,
    fit: BoxFit.cover,
  );
}

Row _titleRow(String name, String jobTitle, Color textColor) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              name,
              style: TextStyle(color: textColor, fontSize: 22),
            ),
          ),
          Center(
            child: Text(
              jobTitle,
              style: TextStyle(color: textColor, fontSize: 24),
            ),
          )
        ],
      )
    ],
  );
}

Stack _titleStack(String name, String jobTitle, Color textColor) {
  return Stack(
      alignment: Alignment.center,
      children: [_titleImage(), _titleRow(name, jobTitle, textColor)]);
}
