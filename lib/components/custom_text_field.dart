import 'package:flutter/material.dart';
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

class PasswordTextField extends StatefulWidget {
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
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        controller: widget.controller,
        validator: widget.validator,
        enabled: widget.enabled,
        autovalidateMode: widget.autovalidateMode,
        keyboardType: widget.keyboardType,
        decoration: InputDecoration(
          suffixIcon: GestureDetector(
            onTap: () {
              flag = !flag;
              setState(() {});
            },
            child: Icon(
                flag ? Icons.remove_red_eye : Icons.remove_red_eye_outlined),
          ),
          prefixIcon: Icon(widget.icon),
          fillColor: (widget.enabled != null && widget.enabled!)
              ? null
              : Colors.grey.shade300,
          filled: (widget.enabled == null) ? false : (!widget.enabled!),
          labelText: widget.text,
        ),
        obscureText: flag,
      ),
    );
  }
}

class DatePicker extends StatefulWidget {
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
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        controller: widget.controller,
        validator: widget.validator,
        enabled: widget.enabled,
        autovalidateMode: AutovalidateMode.always,
        onTap: (widget.enabled)
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
                  setState(() {
                    // using state so that the UI will be rerendered when date is picked

                    widget.controller.text =
                        DateFormat("yyyy-MM-dd").format(pickedDate).toString();
                  });
                });
              }
            : null,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.calendar_month),
          fillColor: (widget.enabled) ? null : Colors.grey.shade300,
          filled: (widget.enabled) ? false : (!widget.enabled),
          labelText: "Tanggal Lahir",
        ),
      ),
    );
  }
}
