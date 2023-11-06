import 'package:flutter/material.dart';
import 'package:store_api_app/screens/home_page/home_page.dart';
import 'package:store_api_app/screens/update_product_page/update_product_page.dart';
import 'package:store_api_app/services/update_product.dart';

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
        UpdateProductPage.id:(context)=>UpdateProductPage(),
      },
      initialRoute: HomePage.id,
      
    );
  }
}
