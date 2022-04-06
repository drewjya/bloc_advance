import 'package:bloc_advance/blocs/auth/auth_bloc.dart';
import 'package:bloc_advance/components/custom_text_field.dart';
import 'package:bloc_advance/constants/routes.dart';
import 'package:bloc_advance/function/validator.dart';
import 'package:bloc_advance/models/users_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final username = TextEditingController();
    final password = TextEditingController();
    final _login = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,
      ),
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthSuccess) {
            Navigator.pushNamedAndRemoveUntil(
              context,
              NameRoute.welcome,
              (route) => false,
            );
            // Navigator.pushNamedAndRemoveUntil(
            //     context, NameRoute.welcome, (route) => false);
          }
          // if (state is AuthFailed) {
          //   ScaffoldMessenger.of(context).showSnackBar(
          //     SnackBar(
          //       content: Text(state.message ?? ''),
          //     ),
          //   );
          // }
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
                      text: "Username",
                      controller: username,
                      validator: Validator().checkEmpty,
                    ),
                    CustomTextField(
                      text: "Password",
                      controller: password,
                      validator: Validator(minLenth: 1).validatePassword,
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
