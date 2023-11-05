import 'package:flutter/material.dart';
import 'package:store_api_app/screens/home_page/home_page.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.id:(context)=>HomePage(),
      },
      initialRoute: HomePage.id,
      
    );
  }
}
