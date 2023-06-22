import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _showError = false;

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100, // Defina a largura desejada para a logo
              height: 100, // Defina a altura desejada para a logo
              child: Image.asset('lib/images/hortifruti-home-logo.png'),
            ),
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Login',
              ),
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Senha',
              ),
              obscureText: true,
            ),
            if (_showError)
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  'Login ou senha incorretos!',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Lógica de autenticação mockada
                final String username = _usernameController.text;
                final String password = _passwordController.text;

                if (username == 'admin' && password == '12345') {
                  // Login bem-sucedido
                  Navigator.pushReplacementNamed(context, '/productList');
                } else {
                  // Login ou senha incorretos
                  setState(() {
                    _showError = true;
                  });
                }
              },
              child: const Text('Enviar'),
            ),
          ],
        ),
      ),
    );
  }
}
