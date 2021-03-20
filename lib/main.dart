import 'package:flutter/material.dart';
import './pages/login.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;

Future main() async {
  await DotEnv.load(fileName: ".env");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      routes: <String, WidgetBuilder> {
        '/home': (BuildContext context) => new LoginPage(),
        // '/subpage': (BuildContext context) => new iPhoneXXS11Pro1(),
      },
    );
  }
}
