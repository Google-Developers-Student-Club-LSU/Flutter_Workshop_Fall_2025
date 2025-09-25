import 'package:flutter/material.dart';
import 'package:flutterworkshop/Pages/LoginPage.dart';
import 'package:flutterworkshop/Provider/FruitProvider.dart';
import 'package:flutterworkshop/constant.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) {
        final fruitProvider = FruitProvider();
        fruitProvider.loadData(allFruit);
        return fruitProvider;
      })
    ],
    child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: appTheme,
      home: LoginPage() 
    );
  }
}
