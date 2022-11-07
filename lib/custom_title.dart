import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({super.key});

  final String _name = 'Andre Burke';
  final String _jobTitle = 'Software Engineer';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(50),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: Text(_name),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(_jobTitle),
              )
            ],
          )
        ],
      ),
    );
  }
}
