import 'package:flutter/material.dart';
import 'package:bisharer/color.dart';
import 'package:bisharer/screens/auth/formProps.dart';
import 'package:bisharer/screens/auth/text_fields/email_text_field.dart';
import 'package:bisharer/screens/auth/utils/auth_app_bar.dart';
import 'package:bisharer/screens/auth/utils/auth_bck_temp.dart';
import 'package:bisharer/screens/auth/utils/auth_header.dart';
import 'package:bisharer/screens/auth/utils/float_container.dart';
import 'package:bisharer/screens/auth/utils/log_in_btn.dart';

class ForgotPasswordScreen extends StatefulWidget {
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  void initState() {
    super.initState();

    emailForgotController = TextEditingController();
    emailForgotFocusNode = FocusNode();
  }

  @override
  void dispose() {
    emailForgotController?.dispose();
    emailForgotFocusNode?.dispose();

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
                  'Enter your email below, a reset link will be sent to that email',
              title: 'Forgot Password',
            ),
            FloatContainer(
              margin: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 40,
              ),
              child: Form(
                key: forgotPasswordFormKey,
                child: Column(
                  children: [
                    EmailTextField(
                      isForgotPassword: true,
                      controller: emailForgotController,
                      focusNode: emailForgotFocusNode,
                    ),
                    SizedBox(height: 10),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 7),
                      height: 45,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size.infinite),
                          backgroundColor:
                              MaterialStateProperty.all(primaryTheme),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Send Reset Link',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
