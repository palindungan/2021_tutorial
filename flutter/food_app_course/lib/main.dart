import 'package:flutter/material.dart';
import 'package:food_app_course/scr/providers/auth.dart';
import 'file:///C:/xampp/htdocs/2021_tutorial/flutter/food_app_course/lib/scr/helpers/style.dart';
import 'package:food_app_course/scr/screens/home.dart';
import 'package:food_app_course/scr/screens/login.dart';
import 'package:food_app_course/scr/widgets/loading.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider.value(value: AuthProvider.initialize())],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
        primarySwatch: red,
      ),
      home: ScreenController(),
    ),
  ));
}

class ScreenController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthProvider>(context);
    switch (auth.status) {
      case Status.Uninitialized:
        return Loading();
      case Status.Unauthenticated:
      case Status.Authenticating:
        return LoginScreen();
      case Status.Authenticated:
        return HomeScreen();
      default:
        return LoginScreen();
    }
  }
}
