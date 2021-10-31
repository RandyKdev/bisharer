import 'package:flutter/material.dart';
import 'package:bisharer/screens/auth/create_account.dart';
import 'package:bisharer/screens/auth/login.dart';
import 'package:bisharer/screens/auth/utils/auth_bck_temp.dart';
import 'package:bisharer/screens/auth/utils/auth_footer.dart';
import 'package:bisharer/screens/auth/utils/create_account_btn.dart';
import 'package:bisharer/screens/auth/utils/float_container.dart';
import 'package:bisharer/screens/auth/utils/log_in_btn.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AuthBckTemp(
      child: Center(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 20),
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Hero(
                  tag: 'authAppIcon',
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage('https://unsplash.it/550'),
                  ),
                ),
              ),
              FloatContainer(
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        'Welcome to Sharer',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      'We make your dreams come true.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 30),
                    LogInBtn(onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return LogInScreen();
                      }));
                    }),
                    CreateAccountBtn(onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return CreateAccountScreen();
                      }));
                    }),
                  ],
                ),
              ),
              AuthFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
