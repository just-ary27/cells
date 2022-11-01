import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../routes/routes.dart';
import '../../utils/helpers/screen_helper.dart';
import '../../utils/handlers/route_handler.dart';
import '../../components/authback_component.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 0.35 * logicalHeight,
              width: logicalWidth,
              child: AuthBackground(
                parentHeight: 0.35 * logicalHeight,
              ),
            ),
            Container(
              height: 0.65 * logicalHeight,
              width: logicalWidth,
              padding: EdgeInsets.symmetric(horizontal: 0.1 * logicalWidth),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 0.032 * logicalHeight,
                  ),
                  Text(
                    "Login",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  SizedBox(
                    height: 0.032 * logicalHeight,
                  ),
                  SizedBox(
                    width: logicalWidth,
                    height: 40,
                    child: SignInButton(
                      Buttons.Google,
                      text: "Continue with Google",
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    height: 0.016 * logicalHeight,
                  ),
                  SizedBox(
                    width: logicalWidth,
                    height: 40,
                    child: SignInButton(
                      Buttons.AppleDark,
                      text: "Continue with Apple",
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    height: 0.021 * logicalHeight,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 0.17 * logicalWidth,
                        child: const Divider(
                          thickness: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Text(
                          "OR",
                          style: GoogleFonts.ubuntu(
                            fontSize: 15,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 0.17 * logicalWidth,
                        child: const Divider(
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Email",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  SizedBox(
                    height: 0.013 * logicalHeight,
                  ),
                  SizedBox(
                    height: 45,
                    child: TextFormField(
                      cursorColor: Theme.of(context).primaryColor,
                      decoration: InputDecoration(
                        focusColor: Colors.white,
                        hoverColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context).focusColor,
                            width: 1.0,
                          ),
                        ),
                        fillColor: Colors.transparent,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 0.013 * logicalHeight,
                  ),
                  Text(
                    "Password",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  SizedBox(
                    height: 0.013 * logicalHeight,
                  ),
                  SizedBox(
                    height: 45,
                    child: TextFormField(
                      cursorColor: Theme.of(context).primaryColor,
                      decoration: InputDecoration(
                        focusColor: Colors.white,
                        hoverColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context).focusColor,
                            width: 1.0,
                          ),
                        ),
                        fillColor: Colors.transparent,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 0.000 * logicalHeight,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontSize: 12,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 0.006 * logicalHeight,
                  ),
                  SizedBox(
                    width: logicalWidth,
                    height: 45,
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Theme.of(context).primaryColor,
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
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
                    height: 0.006 * logicalHeight,
                  ),
                  Container(
                    width: logicalWidth,
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                            fontSize:
                                Theme.of(context).textTheme.subtitle1!.fontSize,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            goRouter.replace(RouteHandler.signup);
                          },
                          child: Text(
                            "Signup",
                            style: TextStyle(
                              fontSize: 12,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
