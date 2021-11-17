import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/common/theme_helper.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const PrimaryButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ThemeHelper.buttonBoxDecoration(context),
      child: ElevatedButton(
        style: ThemeHelper.buttonStyle(),
        child: Padding(
          padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
          child: Text(
            text.toUpperCase(),
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
