import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/common/form_helper.dart';
import 'package:flutter_login_ui/common/theme_helper.dart';

class PrimaryTextField extends StatelessWidget {
  final String label;
  final String hint;
  final TextEditingController controller;

  const PrimaryTextField(
      {Key? key,
      required this.label,
      required this.hint,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        style: TextStyle(fontWeight: FontWeight.w400),
        controller: controller,
        decoration: ThemeHelper.textInputDecoration(label, hint),
        validator: (value) =>
            FormHelper.validateAlphabet(value!, 'Invalid name'),
      ),
      decoration: ThemeHelper.inputBoxDecorationShaddow(),
    );
  }
}
