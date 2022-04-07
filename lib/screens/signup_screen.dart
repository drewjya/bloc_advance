import 'package:bloc_advance/blocs/auth/auth_bloc.dart';
import 'package:bloc_advance/components/custom_text_field.dart';
import 'package:bloc_advance/constants/routes.dart';
import 'package:bloc_advance/function/validator.dart';
import 'package:bloc_advance/models/users_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SignupScreen extends HookWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final username = useTextEditingController();
    final password = useTextEditingController();
    final signup = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Signup"),
        centerTitle: true,
      ),
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthLoading) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text("Signup Success"),
                backgroundColor: Colors.greenAccent.shade700,
                duration: const Duration(milliseconds: 500),
                // dismissDirection: DismissDirection.horizontal,
                // animation: Animation<2.0>,
              ),
            );

            Navigator.pushNamedAndRemoveUntil(
              context,
              NameRoute.welcome,
              (route) => false,
            );
            // Navigator.pushNamedAndRemoveUntil(
            //     context, NameRoute.welcome, (route) => false);
          }
          if (state is AuthFailed) {
            (!state.loggedIn)
                ? ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Failed Signup"),
                    ),
                  )
                : null;
          }
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: Form(
              key: signup,
              child: Container(
                margin: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    CustomTextField(
                      icon: Icons.person,
                      text: "Username",
                      controller: username,
                      autovalidateMode: AutovalidateMode.always,
                      validator: Validator(minLenth: 3).checkEmpty,
                    ),
                    PasswordTextField(
                      icon: Icons.key_outlined,
                      text: "Password",
                      controller: password,
                      autovalidateMode: AutovalidateMode.always,
                      validator: Validator(minLenth: 6).validatePassword,
                    ),
                    TextButton(
                      onPressed: () {
                        if (signup.currentState!.validate()) {
                          context.read<AuthBloc>().add(
                                SignupAuth(
                                  user: UserModel(
                                      username: username.text,
                                      password: password.text),
                                ),
                              );
                        }
                      },
                      child: const Text("Signup"),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
