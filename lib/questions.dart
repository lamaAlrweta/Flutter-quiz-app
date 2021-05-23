import 'package:flutter/material.dart';

class Q extends StatelessWidget {
  final String que;

  Q(this.que);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      child: Text(
        que,
        style: TextStyle(
          fontSize: 28.0,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
