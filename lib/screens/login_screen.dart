import 'package:bloc_advance/blocs/auth/auth_bloc.dart';
import 'package:bloc_advance/components/custom_text_field.dart';
import 'package:bloc_advance/constants/routes.dart';
import 'package:bloc_advance/function/validator.dart';
import 'package:bloc_advance/models/users_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LoginScreen extends HookWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final username = useTextEditingController();
    final password = useTextEditingController();
    final _login = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,
      ),
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          
          if (state is AuthLoading) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text("Login Success"),
                backgroundColor: Colors.greenAccent.shade700,
                duration: const Duration(milliseconds: 500),
              ),
            );
            Navigator.pushNamedAndRemoveUntil(
                context, NameRoute.welcome, (route) => false);
          } else if (state is AuthFailed) {
            if (!state.loggedIn) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Login Failed"),
                ),
              );
            }
          }
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: Form(
              key: _login,
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
                        if (_login.currentState!.validate()) {
                          context.read<AuthBloc>().add(
                                LoginAuth(
                                  user: UserModel(
                                    username: username.text,
                                    password: password.text,
                                  ),
                                ),
                              );
                        }
                      },
                      child: const Text("Login"),
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
