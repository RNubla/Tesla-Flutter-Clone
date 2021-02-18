import 'dart:io';

import 'package:flutter/material.dart';
import 'package:window_size/window_size.dart';
import 'package:windows_app/components/CarItem/CarItem.dart';

// void main() => runApp(MyApp());
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setWindowMinSize(Size(400.0,700.0));
  if(Platform.isWindows || Platform.isLinux || Platform.isMacOS){
    setWindowTitle('Tesla Clone');
    setWindowMinSize(Size(400.0,700.0));
    setWindowMaxSize(Size(400.0, 700.0));
  }
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            child: ListView(
              children: [
                CarItem('ModelS','Starting at \$69,420', 'assets/images/ModelS.jpeg'),
                CarItem('Model3', 'Starting at \$32,000', 'assets/images/Model3.jpeg'),
                CarItem('ModelX', 'Starting at \$62,000', 'assets/images/ModelX.jpeg')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
