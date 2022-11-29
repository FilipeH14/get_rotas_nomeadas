import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas_nomeadas/pages/envio_parametros/argument_param_page.dart';
import 'package:get_rotas_nomeadas/pages/envio_parametros/envio_parametros_home_page.dart';
import 'package:get_rotas_nomeadas/pages/envio_parametros/path_param_page.dart';
import 'package:get_rotas_nomeadas/pages/envio_parametros/query_param_page.dart';
import 'package:get_rotas_nomeadas/pages/home_page.dart';
import 'package:get_rotas_nomeadas/pages/inicial/inicial_page1.dart';
import 'package:get_rotas_nomeadas/pages/middlewares/access_denied_page.dart';
import 'package:get_rotas_nomeadas/pages/middlewares/middleware_home_page.dart';
import 'package:get_rotas_nomeadas/pages/middlewares/route_middleware.dart';
import 'package:get_rotas_nomeadas/pages/rota_nao_encontrada/rota_nao_encontrada_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      unknownRoute:
          GetPage(name: '/404', page: () => const RotaNaoEncontradaPage()),
      initialRoute: '/home',
      getPages: [
        GetPage(
          name: '/home',
          page: () => const HomePage(),
        ),
        GetPage(
          name: '/inicial/page1',
          page: () => const InicialPage1(),
        ),
        GetPage(
          name: '/envio_parametros',
          page: () => const EnvioParametrosHomePage(),
          children: [
            GetPage(
              name: '/arguments',
              page: () => const ArgumentParamPage(),
            ),
            GetPage(
              name: '/path_param/:nome/jornadaGetX',
              page: () => const PathParamPage(),
            ),
            GetPage(
              name: '/query_param',
              page: () => const QueryParamPage(),
            ),
          ],
        ),
        GetPage(
          name: '/middlewares',
          page: () => MiddlewareHomePage(),
          middlewares: [
            RouteMiddleware(priority: 1),
          ],
        ),
        GetPage(
          name: '/accessDenied',
          page: () => const AccessDeniedPage(),
        ),
      ],
    );
  }
}
