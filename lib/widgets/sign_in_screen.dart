import 'package:flutter/material.dart';
import 'signup_screen.dart';
import 'reset_password_screen.dart';
import 'package:lab08_09/elements_func.dart';

class SignInScreen extends StatefulWidget{
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

  class _SignInScreenState extends State<SignInScreen> with Elements{

  final _formKey = GlobalKey<FormState>();

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 200.0,
                child: Image.asset('assets/images/flutter-logo.png'),
              ),
              Elements.spacer15,
              textField(text: "Email:", validateEmail: true),
              Elements.spacer15,
              textField(text: "Password:", validatePassword: true),
              Elements.spacer,
              Row(
                children: <Widget>[
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () =>
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignupScreen(),
                          ),
                        )
                      },
                      child: const Text(
                        "Sign up",
                      ),
                    ),
                  ),
                ],
              ),
              Elements.spacer,
              Row(
                children: <Widget>[
                  Expanded(
                    //changeScreenButton
                    child: ElevatedButton(
                      onPressed: (){
                        final isValid = _formKey.currentState?.validate();
                        if (isValid == true){
                          showDialog(
                              context: context,
                              builder: (BuildContext ctx){
                                return const AlertDialog(
                                  title: Text("Successful login!"),
                                );
                              },
                          );
                        }
                      },
                      /*
                      onPressed: () =>
                      {
                        showDialog(
                          context: context,
                          builder: (BuildContext ctx) {
                            return const AlertDialog(
                              title: Text('Message'),
                              content: Text("Need to implement"),
                            );
                          },
                        )
                      },
                       */
                      child: const Text(
                        "Login",
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () =>
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ResetPasswordScreen(),
                          ),
                        )
                      },
                      style: ElevatedButton.styleFrom(
                        side: BorderSide.none,
                      ),
                      child: const Text(
                        "Reset password",
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        ),
      );
    }
  }

