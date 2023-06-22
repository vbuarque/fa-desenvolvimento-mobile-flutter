import 'package:flutter/material.dart';

class OrderConfirmedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pedido Confirmado'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100, // Defina a largura desejada para a logo
              height: 100, // Defina a altura desejada para a logo
              child: Image.asset('lib/images/hortifruti-home-logo.png'),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Pedido confirmado!',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/productList');
              },
              child: Text('Voltar'),
            ),
          ],
        ),
      ),
    );
  }
}
