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
          if (state is AuthAuto) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text("Login Success"),
                backgroundColor: Colors.greenAccent.shade700,
                duration: const Duration(milliseconds: 500),
              ),
            );
            Navigator.pushReplacementNamed(
              context,
              NameRoute.welcome,
              
            );
          }
        },
        builder: (_, state) => Center(
          child: SizedBox(
            height: 300,
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.discordapp.com/attachments/914874385834344500/961534469322461264/download.jpeg"),
                    ),
                  ),
                ),
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
