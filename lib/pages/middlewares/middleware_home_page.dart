import 'package:flutter/material.dart';

class MiddlewareHomePage extends StatelessWidget {
  MiddlewareHomePage({Key? key}) : super(key: key) {
    debugPrint('Criando página Middleware home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('middlewares page')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Botão'),
          onPressed: () {},
        ),
      ),
    );
  }
}
