import 'package:flutter/material.dart';
import 'package:zimpeto_trader/screens/home_screen.dart';
import 'package:zimpeto_trader/screens/login_screen.dart';
import 'package:provider/provider.dart';
import 'models/product_model.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ProductModel(),
      child: ZTApp(),
    ),
  );
}

class ZTApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ZT - Zimpeto Trader',
      theme: ThemeData(
        primaryColor: Colors.blue[900],
        scaffoldBackgroundColor: Colors.black,
        colorScheme: ColorScheme.dark(
          primary: Colors.blue[900]!,
          secondary: Colors.redAccent,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue[900],
        ),
      ),
      home: LoginScreen(),
    );
  }
}
