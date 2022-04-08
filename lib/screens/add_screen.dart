import 'package:bloc_advance/blocs/auth/auth_bloc.dart';
import 'package:bloc_advance/blocs/button/button_bloc.dart';
import 'package:bloc_advance/blocs/customers/customers_bloc.dart';
import 'package:bloc_advance/constants/routes.dart';
import 'package:bloc_advance/components/image_picker.dart';
import 'package:bloc_advance/models/customers_model.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:bloc_advance/components/custom_text_field.dart';
import 'package:bloc_advance/function/validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../components/custom_form.dart';
import '../components/leading_button.dart';

class AddScreen extends HookWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> title = [
      "1. Data Konsumen",
      "2. Data Kendaraan",
      "3. Data Ktp"
    ];
    final TextEditingController name = useTextEditingController();
    final TextEditingController phoneNum = useTextEditingController();
    final TextEditingController merk = useTextEditingController();
    final TextEditingController model = useTextEditingController();
    final TextEditingController date = useTextEditingController();
    final TextEditingController pictureLoc = useTextEditingController();
    final key1 = GlobalKey<FormState>();
    final key2 = GlobalKey<FormState>();
    final key3 = GlobalKey<FormState>();

    return BlocListener<CustomersBloc, CustomersState>(
      listener: (context, state) {
        if (state is CustomersSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: const Text("Success menambahkan data konsumen"),
              backgroundColor: Colors.greenAccent.shade700,
              duration: const Duration(milliseconds: 500),
            ),
          );
        } else if (state is CustomersLoaded) {
          Navigator.pushReplacementNamed(context, NameRoute.welcome);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: TitleProvider(title: title),
          leading: const LeadingButton(),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              BlocSelector<ButtonBloc, ButtonState, int>(
                selector: (state) => state.initValue,
                builder: (context, index) {
                  return CustomForm(children: [
                    CustomTextField(
                      icon: Icons.person,
                      controller: name,
                      autovalidateMode: AutovalidateMode.always,
                      validator: Validator().checkEmpty,
                      enabled: index == 1,
                    ),
                    CustomTextField(
                      icon: Icons.phone,
                      controller: phoneNum,
                      autovalidateMode: AutovalidateMode.always,
                      validator: Validator().checkNumberPhone,
                      enabled: index == 1,
                    ),
                    DatePicker(
                      controller: date,
                      validator: Validator().checkEmpty,
                      enabled: index == 1,
                    ),
                  ], keyForm: key1);
                },
              ),
              BlocSelector<ButtonBloc, ButtonState, int>(
                selector: (state) => state.initValue,
                builder: (context, index) {
                  if (index >= 2) {
                    return CustomForm(children: [
                      CustomTextField(
                        icon: Icons.branding_watermark,
                        controller: merk,
                        text: "Merk",
                        autovalidateMode: AutovalidateMode.always,
                        validator: Validator().checkEmpty,
                        enabled: index == 2,
                      ),
                      CustomTextField(
                        icon: Icons.motorcycle,
                        controller: model,
                        text: "Model",
                        autovalidateMode: AutovalidateMode.always,
                        validator: Validator().checkEmpty,
                        enabled: index == 2,
                      ),
                    ], keyForm: key2);
                  } else {
                    return const SizedBox();
                  }
                },
              ),
              BlocSelector<ButtonBloc, ButtonState, int>(
                selector: (state) => state.initValue,
                builder: (context, index) {
                  if (index == 3) {
                    return Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(20),
                          child: const Center(
                              child: Text(
                            "Upload KTP",
                            style: TextStyle(fontSize: 20),
                          )),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50.0),
                          child: ImagePicker(
                            keyForm: key3,
                            controller: pictureLoc,
                          ),
                        ),
                      ],
                    );
                  } else {
                    return const SizedBox();
                  }
                },
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
                child: ButtonNext(
                    key1: key1,
                    key2: key2,
                    pictureLoc: pictureLoc,
                    name: name,
                    phoneNum: phoneNum,
                    date: date,
                    model: model,
                    merk: merk),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonNext extends StatelessWidget {
  const ButtonNext({
    Key? key,
    required this.key1,
    required this.key2,
    required this.pictureLoc,
    required this.name,
    required this.phoneNum,
    required this.date,
    required this.model,
    required this.merk,
  }) : super(key: key);

  final GlobalKey<FormState> key1;
  final GlobalKey<FormState> key2;
  final TextEditingController pictureLoc;
  final TextEditingController name;
  final TextEditingController phoneNum;
  final TextEditingController date;
  final TextEditingController model;
  final TextEditingController merk;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ButtonBloc, ButtonState>(
      builder: (context, state) {
        return ElevatedButton(
          onPressed: () {
            if (state.initValue < 2 && key1.currentState!.validate()) {
              context.read<ButtonBloc>().add(
                    ButtonPressedNext(index: state.initValue),
                  );
            } else if (state.initValue < 3 &&
                key2.currentState != null &&
                key2.currentState!.validate()) {
              context.read<ButtonBloc>().add(
                    ButtonPressedNext(index: state.initValue),
                  );
            } else if (state.initValue == 3 && pictureLoc.text.isNotEmpty) {
              context.read<CustomersBloc>().add(
                    AddCustomers(
                      customer: Customers(
                        customerName: name.text,
                        customersNum: phoneNum.text,
                        dob: date.text,
                        model: model.text,
                        merk: merk.text,
                        picture: pictureLoc.text,
                        createdBy: context.read<AuthBloc>().state.user.id!,
                      ),
                    ),
                  );
            }
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              (state.initValue != 3) ? "Next" : "Submit",
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        );
      },
    );
  }
}

class TitleProvider extends StatelessWidget {
  const TitleProvider({
    Key? key,
    required this.title,
  }) : super(key: key);

  final List<String> title;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ButtonBloc, ButtonState>(builder: (context, state) {
      return Text(
        title[state.initValue - 1],
        style: const TextStyle(fontSize: 20),
      );
    });
  }
}
