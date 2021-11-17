import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/common/constants.dart';
import 'package:flutter_login_ui/data/user_data_dao.dart';
import 'package:flutter_login_ui/models/user_data.dart';
import 'package:flutter_login_ui/widgets/primary_button.dart';
import 'package:flutter_login_ui/widgets/header_widget.dart';
import 'package:flutter_login_ui/widgets/text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final UserDataDao _userDataDao = UserDataDao();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWidget(),
            SafeArea(
              child: Container(
                  padding: Constants.widthPadding,
                  margin: Constants.widthPadding,
                  child: Column(
                    children: [
                      Text(
                        'Welcome',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 30.0),
                      Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              PrimaryTextField(
                                label: 'First Name',
                                hint: 'Enter your first name',
                                controller: _firstNameController,
                              ),
                              SizedBox(height: 30.0),
                              PrimaryTextField(
                                  label: 'Last Name',
                                  controller: _lastNameController,
                                  hint: 'Enter your last name'),
                              SizedBox(height: 15.0),
                              PrimaryButton(
                                text: 'Save',
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    _saveUser();
                                    _clearData();
                                  }
                                },
                              ),
                            ],
                          )),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }

  void _saveUser() {
    final userData = UserData(
        firstName: _firstNameController.text,
        lastName: _lastNameController.text);
    _userDataDao.saveUser(userData);
  }

  void _clearData() {
    _firstNameController.clear();
    _lastNameController.clear();
  }
}
