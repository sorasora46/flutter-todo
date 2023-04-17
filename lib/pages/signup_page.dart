import 'package:flutter/material.dart';
import 'package:flutter_todo/components/custom_appbar.dart';
import 'package:flutter_todo/components/forms/signup_form.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: CustomAppBar(), body: Center(child: SignUpForm()));
  }
}
