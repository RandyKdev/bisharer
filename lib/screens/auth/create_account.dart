import 'package:flutter/material.dart';
import 'package:bisharer/color.dart';
import 'package:bisharer/screens/auth/formProps.dart';
import 'package:bisharer/screens/auth/utils/auth_app_bar.dart';
import 'package:bisharer/screens/auth/utils/auth_bck_temp.dart';
import 'package:bisharer/screens/auth/utils/auth_footer.dart';
import 'package:bisharer/screens/auth/utils/auth_header.dart';
import 'package:bisharer/screens/auth/utils/create_account_btn.dart';
import 'package:bisharer/screens/auth/text_fields/email_text_field.dart';
import 'package:bisharer/screens/auth/utils/float_container.dart';
import 'package:bisharer/screens/auth/text_fields/full_name_text_field.dart';
import 'package:bisharer/screens/auth/text_fields/password_text_field.dart';

class CreateAccountScreen extends StatefulWidget {
  @override
  _CreateAccountScreenState createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    fullNameController = TextEditingController();

    emailFocusNode = FocusNode();
    passwordFocusNode = FocusNode();
    fullNameFocusNode = FocusNode();
  }

  @override
  void dispose() {
    emailController?.dispose();
    passwordController?.dispose();
    fullNameController?.dispose();

    emailFocusNode?.dispose();
    passwordFocusNode?.dispose();
    fullNameFocusNode?.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AuthBckTemp(
      child: SingleChildScrollView(
        child: Column(
          children: [
            AuthAppBar(),
            AuthHeader(
              body:
                  'Create an account and have access to thousands of opportunities for free',
              title: 'Create Account',
            ),
            FloatContainer(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                key: createAccountFormKey,
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    FullNameTextField(),
                    SizedBox(height: 10),
                    EmailTextField(),
                    SizedBox(height: 10),
                    PasswordTextField(isLogIn: false),
                    SizedBox(height: 10),
                    CreateAccountBtn(onPressed: () {
                      Navigator.popUntil(context, (route) => false);
                      Navigator.of(context).pushNamed('/home');
                    }),
                    Text(
                      'By continuing, you agree to Sharer',
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            _info();
                          },
                          child: Text(
                            'Terms of service',
                            style: TextStyle(
                              color: primaryTheme,
                            ),
                          ),
                        ),
                        Text(' and '),
                        GestureDetector(
                          onTap: _info1,
                          child: Text(
                            'Privacy policy',
                            style: TextStyle(
                              color: primaryTheme,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            AuthFooter(
              margin: EdgeInsets.symmetric(horizontal: 20),
            ),
          ],
        ),
      ),
    );
  }

  void _info() {
    showModalBottomSheet(
        // isDismissible: false,
        backgroundColor: failureColor,
        context: context,
        builder: (ctx) {
          return Wrap(
            children: [
              Card(
                margin: EdgeInsets.zero,
                color: failureColor,
                child: ListTile(
                  leading: Icon(
                    Icons.dangerous_outlined,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Something went wrong. Check your internet connection",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  // trailing: Icon(
                  //   Icons.close,
                  //   color: Colors.white,
                  // ),
                ),
              ),
            ],
          );
        });
  }

  void _info1() {
    showModalBottomSheet(
        // isDismissible: false,
        backgroundColor: successColor,
        context: context,
        builder: (ctx) {
          return Wrap(
            children: [
              Card(
                margin: EdgeInsets.zero,
                color: successColor,
                child: ListTile(
                  leading: Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Action completed successfully",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  // trailing: Icon(
                  //   Icons.close,
                  //   color: Colors.white,
                  // ),
                ),
              ),
            ],
          );
        });
  }
}
