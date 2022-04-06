import 'package:bloc_advance/blocs/auth/auth_bloc.dart';
import 'package:bloc_advance/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthSuccess) {
            Future.delayed(const Duration(milliseconds: 450)).then((value) {
              Navigator.pushReplacementNamed(
                context,
                NameRoute.welcome,
              );
            });
          }
        },
        builder: (_, state) => Center(
          child: SizedBox(
            height: 100,
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, NameRoute.login),
                  child: const Text("Login"),
                ),
                TextButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, NameRoute.signup),
                  child: const Text("Register"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
