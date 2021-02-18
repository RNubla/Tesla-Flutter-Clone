import 'package:flutter/material.dart';
import 'package:windows_app/components/Buttons/OrderButton.dart';
import 'package:windows_app/components/Titles/Title.dart';

class CarItem extends StatelessWidget {
  // const CarItem({Key key}) : super(key: key);
  const CarItem(
      @required this.carName, @required this.subtitle, @required this.carImg);
  final String carName;
  final String subtitle;
  final String carImg;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage('$carImg'), fit: BoxFit.cover)),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(30, 20, 0, 0),
                      child: Text(''),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/logo.png'),
                          fit: BoxFit.fitWidth
                        )
                      ),
                    )
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(),
                  ),
                  Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(30, 20, 0, 0),
                        child: Text(''),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/menu.png'),
                                fit: BoxFit.fitHeight
                            )
                        ),
                      )
                  ),
                ],
              ),
              Container(
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(top: 30.0),
                  child: CarTitle(carName, subtitle)),
            ],
          ),
          Column(
            children: [
              OrderButton('Custom Order', Color.fromRGBO(23, 26, 32, .5),
                  Colors.white, 0),
              OrderButton(
                  'Existing Inventory',
                  Color.fromRGBO(255, 255, 255, .5),
                  Color.fromRGBO(23, 26, 32, 1),
                  50),
            ],
          )
        ],
      ),
    );
  }
}
