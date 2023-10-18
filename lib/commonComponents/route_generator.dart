import 'package:flutter_coffee_app/screens/delivery.dart';
import 'package:flutter_coffee_app/screens/detail.dart';
import 'package:flutter_coffee_app/screens/home.dart';
import 'package:flutter_coffee_app/screens/order.dart';
import 'package:flutter_coffee_app/screens/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_coffee_app/screens/widgets/item.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/welcome":
        return buildRoute(
          const Welcome(),
          settings: settings,
        );
      case "/Home":
        return buildRoute(
          const Home(),
          settings: settings,
        );
      case "/Detail":
        return buildRoute(
          const Detail(
            item: Item(
              imageUrl: '',
              name: '',
              description: '',
              price: "4.53",
              additions: '',
              cname: '',
              size: '',
            ),
          ),
          settings: settings,
        );
      case "/Order":
        return buildRoute(
          const Order(
            item: Item(
              imageUrl: '',
              name: '',
              description: '',
              price: " 4.53",
              additions: '',
              cname: '',
              size: '',
            ),
          ),
          settings: settings,
        );
      case "/Delivery":
        return buildRoute(
          const Delivery(),
          settings: settings,
        );
      default:
        return buildRoute(
          const Welcome(),
          settings: settings,
        );
    }
  }

  static MaterialPageRoute buildRoute(Widget child,
      {required RouteSettings settings}) {
    return MaterialPageRoute(
        settings: settings, builder: (BuildContext context) => child);
  }
}
