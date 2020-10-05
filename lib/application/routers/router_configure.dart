import 'package:pizza_delivery_api/application/routers/i_router_configure.dart';
import 'package:pizza_delivery_api/modules/menu/menu_routers.dart';
import 'package:pizza_delivery_api/modules/orders/orders_routers.dart';
import 'package:pizza_delivery_api/modules/users/users_routers.dart';
import 'package:pizza_delivery_api/pizza_delivery_api.dart';

class RouterConfigure {
  final Router _router;
  final List<IRouterConfigure> routers = [
    UsersRouters(),
    MenuRouters(),
    OrdersRouters(),
  ];

  RouterConfigure(this._router);

  void configure() => routers.forEach((r) => r.configure(_router));
}
