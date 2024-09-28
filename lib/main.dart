import 'package:flutter/material.dart';
import 'package:pos_flutter/views/products_page.dart';
import 'package:pos_flutter/views/signin_page.dart';
import 'package:pos_flutter/views/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const SignInPage(),
      home: const SignUpPage(),
      // home: const ProductsPage(),
    );
  }
}
