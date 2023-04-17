import 'package:flutter/material.dart';
import 'package:flutter_todo/components/custom_appbar.dart';
import 'package:flutter_todo/components/forms/signin_form.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: CustomAppBar(), body: Center(child: SignInForm()));
  }
}
