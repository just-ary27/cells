import 'dart:io';

import 'package:cells/src/themes/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'routes/routes.dart';

class Cells extends ConsumerStatefulWidget {
  const Cells({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CellsState();
}

class _CellsState extends ConsumerState<Cells> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    switch (Platform.operatingSystem) {
      case "android":
        return GestureDetector(
          onTap: () {
            FocusScopeNode currentScope = FocusScope.of(context);
            if (!currentScope.hasPrimaryFocus && currentScope.hasFocus) {
              FocusManager.instance.primaryFocus!.unfocus();
            }
          },
          child: MaterialApp.router(
            routerConfig: goRouter,
            theme: cellsTheme,
            debugShowCheckedModeBanner: false,
          ),
        );
      case "ios":
        return GestureDetector(
          onTap: () {
            FocusScopeNode currentScope = FocusScope.of(context);
            if (!currentScope.hasPrimaryFocus && currentScope.hasFocus) {
              FocusManager.instance.primaryFocus!.unfocus();
            }
          },
          child: CupertinoApp.router(
            routerConfig: goRouter,
            debugShowCheckedModeBanner: false,
          ),
        );

      default:
        return GestureDetector(
          onTap: () {
            FocusScopeNode currentScope = FocusScope.of(context);
            if (!currentScope.hasPrimaryFocus && currentScope.hasFocus) {
              FocusManager.instance.primaryFocus!.unfocus();
            }
          },
          child: MaterialApp.router(
            routerConfig: goRouter,
            theme: cellsTheme,
            debugShowCheckedModeBanner: false,
          ),
        );
    }
  }
}
