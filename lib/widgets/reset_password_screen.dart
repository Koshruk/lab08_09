import 'package:flutter/material.dart';
import 'package:lab08_09/elements_func.dart';

class ResetPasswordScreen extends StatelessWidget with Elements{
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 200.0,
              child: Image.asset('assets/images/flutter-logo.png'),
            ),
            Elements.spacer,
            const Text(
              "Reset Password",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Elements.spacer15,
            textField("Email:"),
            Elements.spacer,
            Row(
              children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => {
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
                    child: const Text(
                      "Reset",
                    ),
                  ),
                ),
              ],
            ),
            Elements.spacer,
            Row(
              children: <Widget>[
                Expanded(
                    child: backButton(context)
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}
