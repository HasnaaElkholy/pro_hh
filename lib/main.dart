import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hh/screens/verfiypassword.dart';
import 'package:hh/screens/car_details.dart';
import 'package:hh/screens/notification.dart';
import 'package:hh/themes/theme_helper.dart';
import 'package:hh/themes/utils/size_utils.dart';
import 'package:hh/screens/payment_methods.dart';
import 'package:hh/screens/resetpassword.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:CarDetailsScreen()
    );
  }
}
