import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pet_app/providers/planProvider.dart';
import 'package:pet_app/providers/screenIndexProvider.dart';
import 'package:pet_app/signInOut/login.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
      ChangeNotifierProvider(create: (context) => ScreenIndexProvider()),
        ChangeNotifierProvider(create: (context) => PlanProvider()),

    ],
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor:Colors.grey[300],
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.deepOrangeAccent),
          color: Colors.transparent,
          elevation: 0,
        ),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      home: const LoginPage(),
    ),
    );
  }
}

