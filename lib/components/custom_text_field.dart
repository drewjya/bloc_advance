import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SliverCustomTextField extends StatelessWidget {
  final String? text;
  final bool? enabled;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  const SliverCustomTextField(
      {Key? key,
      this.text,
      this.enabled,
      this.controller,
      this.validator,
      this.keyboardType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: CustomTextField(
          controller: controller,
          validator: validator,
          enabled: enabled,
          text: text),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      this.controller,
      this.validator,
      this.enabled,
      this.text,
      this.keyboardType,
      this.autovalidateMode,
      this.onTap})
      : super(key: key);

  final TextEditingController? controller;
  final String? Function(String? p1)? validator;
  final bool? enabled;
  final String? text;
  final AutovalidateMode? autovalidateMode;
  final TextInputType? keyboardType;
  final VoidCallback? onTap;

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
          fillColor:
              (enabled != null && enabled!) ? null : Colors.grey.shade300,
          filled: (enabled == null) ? false : (!enabled!),
          labelText: text,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 2,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 2,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 2,
            ),
          ),
        ),
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
          fillColor: (widget.enabled) ? null : Colors.grey.shade300,
          filled: (widget.enabled) ? false : (!widget.enabled),
          labelText: "Tanggal Lahir",
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 2,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 2,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
