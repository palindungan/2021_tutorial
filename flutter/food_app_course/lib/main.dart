import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_app_course/scr/helpers/style.dart';
import 'package:food_app_course/scr/providers/auth.dart';
import 'package:food_app_course/scr/screens/home.dart';
import 'package:food_app_course/scr/screens/login.dart';
import 'package:food_app_course/scr/widgets/loading.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider.value(value: AuthProvider.initialize())],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
        primarySwatch: red,
      ),
      home: ScreensController(),
    ),
  ));
}

class ScreensController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthProvider>(context);
    switch (auth.status) {
      case Status.Uninitialized:
        print("error disini : Uninitialized");
        return Loading();
      case Status.Unauthenticated:
      case Status.Authenticating:
      print("error disini : Authenticating");
        return LoginScreen();
      case Status.Authenticated:
        print("error disini : Authenticated");
        return HomeScreen();
      default:
        return LoginScreen();
    }
  }
}
