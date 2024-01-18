// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_example/cart_page.dart';
import 'package:go_router_example/error_page.dart';
import 'package:go_router_example/favourites_page.dart';
import 'package:go_router_example/login_page.dart';
import 'package:go_router_example/main_page.dart';
import 'package:go_router_example/notification_page.dart';
import 'package:go_router_example/profile_page.dart';
import 'package:go_router_example/routes/route_name.dart';

class MyRouter {
  static GoRouter returnRouter(bool isAuthenticated) {
    GoRouter router = GoRouter(
      routes: [
        GoRoute(
          name: RouteNames.mainPage,
          path: '/',
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: MainPage(),
            );
          },
        ),
        GoRoute(
          name: RouteNames.profilePage,
          path: '/profile',
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: ProfilePage(),
            );
          },
        ),
        GoRoute(
          name: RouteNames.cartPage,
          path: '/Cart',
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: CartPage(),
            );
          },
        ),
        GoRoute(
          name: RouteNames.favouritesPage,
          path: '/favourites',
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: FavouritesPage(),
            );
          },
        ),
        GoRoute(
          name: RouteNames.notificationPage,
          path: '/notification',
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: NotificationPage(),
            );
          },
        ),
        GoRoute(
          name: RouteNames.loginPage,
          path: '/login',
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: LoginPage(),
            );
          },
        )
      ],
      redirect: (context, state) {
        if (!isAuthenticated) {
          return state.namedLocation(RouteNames.loginPage);
        }
        return null;
      },
      errorPageBuilder: (context, state) {
        return const MaterialPage(child: ErrorPage());
      },
    );
    return router;
  }
}
