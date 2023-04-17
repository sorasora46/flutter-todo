import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool _loading = false;
  final _signUpFormKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  Future<void> handleSignUp() async {
    if (!_signUpFormKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please enter your information')));
      return;
    }

    setState(() {
      _loading = true;
    });

    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _signUpFormKey,
      child: Container(
        margin: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: const Text('Sign up',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: const EdgeInsets.only(left: 16, right: 16),
              child: TextFormField(
                  validator: (value) {
                    if (null == value || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  controller: nameController,
                  decoration: const InputDecoration(
                      labelText: 'Name', hintText: 'John Doe')),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(left: 16, right: 16),
              child: TextFormField(
                  validator: (value) {
                    if (null == value || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                  controller: emailController,
                  decoration: const InputDecoration(
                      labelText: 'Email', hintText: 'ex. example@mail.com')),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(left: 16, right: 16),
              child: TextFormField(
                  validator: (value) {
                    if (null == value || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                  controller: passwordController,
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: const InputDecoration(labelText: 'Password')),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(left: 16, right: 16),
              child: TextFormField(
                  validator: (value) {
                    if (null == value ||
                        value.isEmpty ||
                        value != passwordController.value.text) {
                      return 'Please enter your password correctly';
                    }
                    return null;
                  },
                  controller: confirmPasswordController,
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration:
                      const InputDecoration(labelText: 'Confirm Password')),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  handleSignUp();
                },
                child: const Text('Sign up'))
          ],
        ),
      ),
    );
  }
}
