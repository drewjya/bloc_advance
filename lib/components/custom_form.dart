import 'package:flutter/material.dart';

class CustomForm extends StatelessWidget {
  final List<Widget> children;
  final GlobalKey<FormState> keyForm;
  const CustomForm({
    required this.children,
    required this.keyForm,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        key: keyForm,
        child: Column(
          children: children
              .map((e) => Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: e,
                  ))
              .toList(),
        ));
  }
}
