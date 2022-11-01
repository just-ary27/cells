import 'package:cells/src/components/authback_component.dart';
import 'package:cells/src/routes/routes.dart';
import 'package:cells/src/utils/handlers/route_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utils/helpers/screen_helper.dart';

class AuthScreen extends ConsumerStatefulWidget {
  const AuthScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AuthScreenState();
}

class _AuthScreenState extends ConsumerState<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [
          SizedBox(
            height: 0.5 * logicalHeight,
            child: AuthBackground(
              parentHeight: 0.5 * logicalHeight,
            ),
          ),
          Container(
            height: 0.5 * logicalHeight,
            padding: EdgeInsets.symmetric(horizontal: 0.1 * logicalWidth),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: logicalWidth,
                  height: 50,
                  child: TextButton(
                    onPressed: () {
                      goRouter.push(RouteHandler.login);
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Theme.of(context).primaryColor,
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    child: Text(
                      "Login",
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.043 * logicalHeight,
                ),
                SizedBox(
                  width: logicalWidth,
                  height: 50,
                  child: TextButton(
                    onPressed: () {
                      goRouter.push(RouteHandler.signup);
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Theme.of(context).primaryColor,
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    child: Text(
                      "Signup",
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
