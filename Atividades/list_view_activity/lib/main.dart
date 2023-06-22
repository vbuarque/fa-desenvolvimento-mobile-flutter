import 'package:flutter/material.dart';
import 'package:list_view_activity/screens/login_screen.dart';
import 'package:list_view_activity/screens/order_confirmed_screen.dart';
import 'package:list_view_activity/screens/product_detail_screen.dart';
import 'package:list_view_activity/screens/product_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // Configuração do tema
          ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/productList': (context) => ProductListScreen(),
        '/productDetails': (context) => ProductDetailsScreen(),
        '/orderConfirmed': (context) => OrderConfirmedScreen(),
      },
    );
  }
}
