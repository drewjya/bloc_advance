import 'package:bloc_advance/blocs/button/button_bloc.dart';
import 'package:bloc_advance/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class LeadingButton extends StatelessWidget {
  const LeadingButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ButtonBloc, ButtonState>(
      builder: (context, state) {
        return IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            if (state.initValue == 1) {
              Navigator.pushNamedAndRemoveUntil(
                context,
                NameRoute.welcome,
                (route) => false,
              );
            } else {
              context.read<ButtonBloc>().add(
                    ButtonPressedBefore(index: state.initValue),
                  );
            }
          },
        );
      },
    );
  }
}
