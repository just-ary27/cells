import 'package:cells/src/components/loading_component.dart';
import 'package:cells/src/routes/routes.dart';
import 'package:cells/src/utils/handlers/route_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback(((timeStamp) {
      _initRouteProvider();
    }));
  }

  Future<void> _initRouteProvider() async {
    // TODO: Remove this later.
    await Future.delayed(const Duration(seconds: 2));
    try {
      goRouter.replace(RouteHandler.auth);
    } catch (e) {
      goRouter.replace(RouteHandler.home);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: const Center(
        child: CellProgressIndicator(
          color: Colors.white,
          dimension: 60,
        ),
      ),
    );
  }
}
