import 'package:bloc_advance/blocs/auth/auth_bloc.dart';
import 'package:bloc_advance/blocs/customers/customers_bloc.dart';
import 'package:bloc_advance/constants/routes.dart';
import 'package:bloc_advance/screens/add_screen.dart';
import 'package:bloc_advance/screens/landing_screen.dart';
import 'package:bloc_advance/screens/login_screen.dart';
import 'package:bloc_advance/screens/signup_screen.dart';
import 'package:bloc_advance/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import './function/color_convertion.dart';

void main() async {
  await Hive.initFlutter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CustomersBloc()..add(const LoadCustomers()),
        ),
        BlocProvider(
          create: (context) => AuthBloc()..add(const LoadAuth()),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: const Color(0xff4f81bd).toMaterialColor(),
        ),
        routes: {
          NameRoute.welcome: (context) => const WelcomeScreen(),
          NameRoute.add: (context) => const AddScreen(),
          NameRoute.landing: (context) => const LandingScreen(),
          NameRoute.login: (context) => const LoginScreen(),
          NameRoute.signup: (context) => const SignupScreen(),
        },
        initialRoute: NameRoute.landing,
      ),
    );
  }
}
