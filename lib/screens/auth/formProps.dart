import 'package:flutter/material.dart';

final logInFormKey = GlobalKey<FormState>();
final createAccountFormKey = GlobalKey<FormState>();
final forgotPasswordFormKey = GlobalKey<FormState>();

FocusNode? emailFocusNode;
FocusNode? passwordFocusNode;
FocusNode? fullNameFocusNode;
FocusNode? emailForgotFocusNode;

TextEditingController? emailController;
TextEditingController? passwordController;
TextEditingController? fullNameController;
TextEditingController? emailForgotController;
