import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_example/routes/route_name.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.goNamed(RouteNames.profilePage);
              },
              child: const Text('Profile'),
            ),
            ElevatedButton(
              onPressed: () {
                context.pushNamed(RouteNames.cartPage);
              },
              child: const Text('Cart'),
            ),
            ElevatedButton(
              onPressed: () {
                context.pushNamed(RouteNames.favouritesPage);
              },
              child: const Text('Favourties'),
            ),
            ElevatedButton(
              onPressed: () {
                context.pushNamed(RouteNames.notificationPage);
              },
              child: const Text('Notification'),
            ),
          ],
        ),
      ),
    );
  }
}
