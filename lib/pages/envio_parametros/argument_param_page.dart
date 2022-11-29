import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArgumentParamPage extends StatelessWidget {
  const ArgumentParamPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Map<String, String> arguments = Get.arguments;

    return Scaffold(
      appBar: AppBar(title: const Text('argument page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(arguments['name'] ?? 'nome não encontrado'),
            Text(arguments['curso'] ?? 'curso não encontrado'),
          ],
        ),
      ),
    );
  }
}
