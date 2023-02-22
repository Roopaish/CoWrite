import 'package:cowrite/utils/logging.dart';
import 'package:cowrite/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';

void main() {
  setupLogger();
  runApp(const ProviderScope(child: CoWrite()));
}

class CoWrite extends ConsumerStatefulWidget {
  const CoWrite({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CoWriteState();
}

class _CoWriteState extends ConsumerState<CoWrite> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: RoutemasterDelegate(routesBuilder: (context) {
        return routesLoggedOut;
      }),
      routeInformationParser: const RoutemasterParser(),
    );
  }
}
