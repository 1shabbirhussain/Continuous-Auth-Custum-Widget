import 'package:flutter/material.dart';
import 'package:first_project/controllers/input_field_controller.dart';

class InputField extends StatelessWidget {
  final Stream<String>? stream;
  final Function(String)? onChanged;
  final String hintText;
  final String labelText;
  final bool isObscureText;
  final String? errorText;

  const InputField({
    Key? key,
    this.stream,
    this.onChanged,
    required this.hintText,
    required this.labelText,
    this.isObscureText = false,
    this.errorText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String>(
      stream: stream,
      builder: (context, AsyncSnapshot<String> snapshot) {
        return Container(
          margin: EdgeInsets.only(bottom: 16.0),
          child: TextField(
            onChanged: onChanged,
            obscureText: isObscureText,
            keyboardType: isEmailType() ? TextInputType.emailAddress : TextInputType.text,
            decoration: InputDecoration(
              hintText: hintText,
              labelText: labelText,
              errorText: snapshot.error != null ? snapshot.error as String : errorText,
            ),
          ),
        );
      },
    );
  }

  bool isEmailType() {
    return labelText.toLowerCase().contains('email');
  }
}
