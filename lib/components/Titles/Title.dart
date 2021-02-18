import 'package:flutter/material.dart';

class CarTitle extends StatelessWidget {
  final String _carName;
  final String _subTitle;
  CarTitle(@required this._carName, @required this._subTitle);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text(
            "$_carName",
            style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w600),
          ),
        ),
        Container(
          child: Text(
            "$_subTitle",
            style: TextStyle(
                fontSize: 16.0, color: Color.fromARGB(255, 92, 94, 98)),
          ),
        )
      ],
    );
  }
}
