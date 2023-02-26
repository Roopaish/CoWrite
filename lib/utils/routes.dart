import 'package:cowrite/pages/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

final loggedOutRoute = RouteMap(routes: {
  "/": (route) => const MaterialPage(child: LoginPage()),
});
