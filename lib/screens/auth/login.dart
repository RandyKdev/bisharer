import 'package:flutter/material.dart';
import 'package:bisharer/color.dart';
import 'package:bisharer/screens/auth/forgot_password.dart';
import 'package:bisharer/screens/auth/formProps.dart';
import 'package:bisharer/screens/auth/utils/auth_app_bar.dart';
import 'package:bisharer/screens/auth/utils/auth_bck_temp.dart';
import 'package:bisharer/screens/auth/utils/auth_footer.dart';
import 'package:bisharer/screens/auth/utils/auth_header.dart';
import 'package:bisharer/screens/auth/text_fields/email_text_field.dart';
import 'package:bisharer/screens/auth/utils/float_container.dart';
import 'package:bisharer/screens/auth/utils/log_in_btn.dart';
import 'package:bisharer/screens/auth/text_fields/password_text_field.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();

    emailFocusNode = FocusNode();
    passwordFocusNode = FocusNode();
  }

  @override
  void dispose() {
    emailController?.dispose();
    passwordController?.dispose();

    emailFocusNode?.dispose();
    passwordFocusNode?.dispose();

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
              body: 'Log in to continue receiving opportunities',
              title: 'Log In',
            ),
            FloatContainer(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                key: logInFormKey,
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    EmailTextField(),
                    SizedBox(height: 10),
                    PasswordTextField(),
                    SizedBox(height: 10),
                    LogInBtn(onPressed: () {
                      Navigator.popUntil(context, (route) => false);
                      Navigator.of(context).pushNamed('/home');
                    }),
                    Container(
                      child: TextButton(
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(
                            color: primaryTheme,
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) {
                            return ForgotPasswordScreen();
                          }));
                        },
                      ),
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
}
