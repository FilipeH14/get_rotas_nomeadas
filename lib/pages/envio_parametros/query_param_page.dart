import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QueryParamPage extends StatelessWidget {
  const QueryParamPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('quary page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Get.parameters['nome'] ?? 'nome não encontrado'),
            Text(Get.parameters['id'] ?? 'id não encontrado'),
            Text(Get.parameters['curso'] ?? 'curso não encontrado'),
          ],
        ),
      ),
    );
  }
}
