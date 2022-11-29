import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RouteMiddleware extends GetMiddleware {
  RouteMiddleware({ super.priority });

  @override
  GetPage? onPageCalled(GetPage? page) {
    debugPrint('executando middlewares onPageCalled');
    return super.onPageCalled(page);
  }

  @override
  Widget onPageBuilt(Widget page) {
    debugPrint('executando middlewares onPageBuilt');
    return super.onPageBuilt(page);
  }

  @override
  RouteSettings? redirect(String? route) {
    if(route == '/middleware') {
      return const RouteSettings(
        name: '/accessDenied',
      );
    }

    return null;
  }
}
