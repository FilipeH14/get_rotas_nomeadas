import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EnvioParametrosHomePage extends StatelessWidget {
  const EnvioParametrosHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('parâmetros home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Arguments'),
              onPressed: () => Get.toNamed(
                '/envio_parametros/arguments',
                arguments: {
                  'curso': 'Jornada GetX',
                  'name': 'Filipe Haniel',
                },
              ),
            ),
            ElevatedButton(
              child: const Text('Path Param'),
              onPressed: () {
                final param = Uri.encodeFull('Filipe Haniel');
                Get.toNamed('/envio_parametros/path_param/$param/jornadaGetX');
              },
            ),
            ElevatedButton(
              child: const Text('Query Param'),
              onPressed: () => Get.toNamed(
                '/envio_parametros/query_param?nome=Filipe Haniel&id=1&curso=jornada getx',
              ),
            ),
            ElevatedButton(
              child: const Text('Query Param (parâmetros)'),
              onPressed: () => Get.toNamed('/envio_parametros/query_param',
                  parameters: {
                    'nome': 'Filipe Haniel',
                    'id': '1',
                    'curso': 'jornada GetX'
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
