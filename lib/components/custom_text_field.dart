import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      this.controller,
      this.validator,
      this.enabled,
      this.text,
      this.keyboardType,
      this.autovalidateMode,
      required this.icon,
      this.onTap})
      : super(key: key);

  final TextEditingController? controller;
  final String? Function(String? p1)? validator;
  final bool? enabled;
  final String? text;
  final AutovalidateMode? autovalidateMode;
  final TextInputType? keyboardType;
  final VoidCallback? onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        controller: controller,
        validator: validator,
        enabled: enabled,
        autovalidateMode: autovalidateMode,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          fillColor:
              (enabled != null && enabled!) ? null : Colors.grey.shade300,
          filled: (enabled == null) ? false : (!enabled!),
          labelText: text,
        ),
        obscureText: text == "Password",
      ),
    );
  }
}

class PasswordTextField extends HookWidget {
  const PasswordTextField(
      {Key? key,
      this.controller,
      this.validator,
      this.enabled,
      this.text,
      this.keyboardType,
      this.autovalidateMode,
      required this.icon,
      this.onTap})
      : super(key: key);

  final TextEditingController? controller;
  final String? Function(String? p1)? validator;
  final bool? enabled;
  final String? text;
  final AutovalidateMode? autovalidateMode;
  final TextInputType? keyboardType;
  final VoidCallback? onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final flag = useState(true);
    // bool flag = true;
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        controller: controller,
        validator: validator,
        enabled: enabled,
        autovalidateMode: autovalidateMode,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          suffixIcon: GestureDetector(
            onTap: () {
              flag.value = !flag.value;
            },
            child: Icon(flag.value
                ? Icons.remove_red_eye
                : Icons.remove_red_eye_outlined),
          ),
          prefixIcon: Icon(icon),
          fillColor:
              (enabled != null && enabled!) ? null : Colors.grey.shade300,
          filled: (enabled == null) ? false : (!enabled!),
          labelText: text,
        ),
        obscureText: flag.value,
      ),
    );
  }
}

class DatePicker extends HookWidget {
  final TextEditingController controller;
  final String? Function(String?) validator;
  final bool enabled;
  const DatePicker(
      {Key? key,
      required this.controller,
      required this.validator,
      required this.enabled})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        controller: controller,
        validator: validator,
        enabled: enabled,
        autovalidateMode: AutovalidateMode.always,
        onTap: (enabled)
            ? () {
                FocusScope.of(context).requestFocus(FocusNode());
                showDatePicker(
                        context: context,
                        initialDate: DateTime(2005),
                        firstDate: DateTime(1950),
                        lastDate: DateTime(2010))
                    .then((pickedDate) {
                  // Check if no date is selected
                  if (pickedDate == null) {
                    return;
                  }

                  useState({
                    controller.text =
                        DateFormat("yyyy-MM-dd").format(pickedDate).toString()
                  });
                });
              }
            : null,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.calendar_month),
          fillColor: (enabled) ? null : Colors.grey.shade300,
          filled: (enabled) ? false : (!enabled),
          labelText: "Tanggal Lahir",
        ),
      ),
    );
  }
}
