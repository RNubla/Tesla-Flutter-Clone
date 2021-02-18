import 'package:flutter/material.dart';

class OrderButton extends StatelessWidget {
  final String _btnString;
  final Color _btnColor;
  final Color _stringColor;
  final double _bottomMargin;
  OrderButton(
      @required this._btnString, @required this._btnColor, this._stringColor, @required this._bottomMargin);
  // final bool typeOfButton == 'primary' ? Color.fromRGB(3, 26, 32, .5) : Colors.white;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      margin: EdgeInsets.only(bottom: _bottomMargin),
      child: GestureDetector(
        onTap: () {
          print('Container clicked');
        },
        child: Container(
          width: MediaQuery.of(context).size.width - 50,
          height: 28,
          alignment: Alignment.center,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              // color: Color.fromRGBO(23, 26, 32, .5)),
              color: _btnColor),
          child: Text(
            '$_btnString'.toUpperCase(),
            style: TextStyle(
                fontSize: 13, fontWeight: FontWeight.w600, color: _stringColor),
          ),
        ),
      ),
    );
  }
}
