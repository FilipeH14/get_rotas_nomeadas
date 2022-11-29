import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('home page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('inicial'),
              onPressed: () => Get.toNamed('/inicial/page1'),
            ),
            ElevatedButton(
              child: const Text('página que não existe'),
              onPressed: () => Get.toNamed('/paginaquenaoexiste'),
            ),
            ElevatedButton(
              child: const Text('envio de parâmetros'),
              onPressed: () => Get.toNamed('/envio_parametros'),
            ),
            ElevatedButton(
              child: const Text('Middlewares'),
              onPressed: () => Get.toNamed('/middlewares'),
            ),
            ElevatedButton(
              child: const Text('Nested Navigation'),
              onPressed: () => Get.toNamed('/nestedNavigation'),
            ),
          ],
        ),
      ),
    );
  }
}
