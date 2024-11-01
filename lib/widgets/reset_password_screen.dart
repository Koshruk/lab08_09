import 'package:flutter/material.dart';
import 'package:lab08_09/elements_func.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

  class _ResetPasswordScreenState extends State<ResetPasswordScreen> with Elements{

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
            Elements.spacer,
            const Text(
              "Reset Password",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Elements.spacer15,
            textField(text: "Email", validateEmail: true),
            Elements.spacer,
            Row(
              children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                    onPressed: (){
                      final isValid = _formKey.currentState?.validate();
                      if (isValid == true){
                        showDialog(
                          context: context,
                          builder: (BuildContext ctx){
                            return const AlertDialog(
                              title: Text("Check your email to reset password"),
                            );
                          },
                        );
                      }
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
      ),
    );
  }

}
