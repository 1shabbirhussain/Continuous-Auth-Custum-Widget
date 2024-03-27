import 'package:flutter/material.dart';
import 'package:first_project/controllers/input_field_controller.dart';

import '../controllers/custom_input_field.dart';

class Login extends StatelessWidget {
  const Login({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(16.0), // Add padding for better spacing
        child: Column(
          children: [
            // emailField(),
            // passwordField(),
            InputField(
              stream: bloc.emailStream,
              onChanged: bloc.emailSink,
              hintText: "you@example.com",
              labelText: "Email Address",
            ),
            InputField(
              stream: bloc.passwordStream,
              onChanged: bloc.passwordSink,
              hintText: "Password",
              labelText: "Password",
              isObscureText: true,
            ),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget submitButton() {
    return Container(
      width: double.infinity, // Make the button take the full width
      child: ElevatedButton(
        onPressed: () {},
        child: Text("Submit"),
      ),
    );
  }
}
