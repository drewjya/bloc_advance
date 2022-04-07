import 'dart:io';

import 'package:bloc_advance/blocs/customers/customers_bloc.dart';
import 'package:bloc_advance/components/custom_text_field.dart';
import 'package:bloc_advance/function/validator.dart';
import 'package:bloc_advance/models/customers_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> title = [
      "1. Data Konsumen",
      "2. Data Kendaraan",
      "3. Data Ktp"
    ];
    TextEditingController name = TextEditingController();
    TextEditingController phoneNum = TextEditingController();
    TextEditingController dob = TextEditingController();
    TextEditingController merk = TextEditingController();
    TextEditingController model = TextEditingController();
    TextEditingController date = TextEditingController();
    final key1 = GlobalKey<FormState>();
    final key2 = GlobalKey<FormState>();
    final key3 = GlobalKey<FormState>();

    // final keyDob = GlobalKey<FormState>();
    // final keyMerk = GlobalKey<FormState>();
    // final keyModel = GlobalKey<FormState>();

    return BlocListener<CustomersBloc, CustomersState>(
        listener: (context, state) {
          if (state is CustomersLoaded) {
            Navigator.pop(context);
          } else if (state is CustomersFailed) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("Please check your input"),
              backgroundColor: Colors.red,
              duration: Duration(milliseconds: 500),
            ));
          } else if (state is CustomersSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: const Text("Success Add New Customers"),
              backgroundColor: Colors.greenAccent.shade700,
              duration: const Duration(milliseconds: 500),
            ));
          }
        },
        child: Scaffold(
          //   : BlocBuilder<CustomersBloc, CustomersState>(
          //     builder: (context, state) {
          //       if (state is CustomersButton) {
          // final vair = state;
          //       return
          appBar: AppBar(
            title: BlocBuilder<CustomersBloc, CustomersState>(
                builder: (context, state) {
              if (state is CustomersButton) {
                return Text(title[state.value - 1]);
              } else if (state is CustomersAddButton) {
                return Text(title[state.value - 1]);
              } else if (state is CustomersFailed) {
                return Text(title[2]);
              } else if (state is CustomersLoading) {
                return Text(title[0]);
              } else {
                return Text(title[0]);
              }
            }),
            leading: BlocBuilder<CustomersBloc, CustomersState>(
              builder: (context, state) {
                return IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    if (state is CustomersButton) {
                      if (state.value != 1) {
                        context
                            .read<CustomersBloc>()
                            .add(BeforeCustomers(value: state.value));
                      } else {
                        context
                            .read<CustomersBloc>()
                            .add(const LoadCustomers());
                      }
                    }
                  },
                );
              },
            ),
            automaticallyImplyLeading: false,
          ),

          body: Padding(
            padding: const EdgeInsets.only(
              left: 25,
              right: 25,
              top: 20,
              bottom: 20,
            ),
            child: BlocConsumer<CustomersBloc, CustomersState>(
              listener: (context, state) {},
              builder: (context, state) {
                if (state is CustomersButton) {
                  return Body(
                    // state: state,
                    date: date,
                    value: state.value,
                    key1: key1,
                    name: name,
                    phoneNum: phoneNum,
                    dob: dob,
                    key2: key2,
                    merk: merk,
                    model: model,
                    key3: key3,
                    onPress: () {
                      if (state.value < 2 && key1.currentState!.validate()) {
                        context
                            .read<CustomersBloc>()
                            .add(ButtonCustomers(value: state.value));
                      } else if (key2.currentState != null &&
                          key2.currentState!.validate() &&
                          state.value < 3) {
                        context
                            .read<CustomersBloc>()
                            .add(ButtonCustomers(value: state.value));
                      }
                      if (state.value == 3 && key3.currentState!.validate()) {}
                    },
                  );
                } else if (state is CustomersAddButton) {
                  return Body(
                    date: date,
                    onPress: () {
                      if (state.value == 3 && key3.currentState!.validate()) {
                        var customer = Customers(
                          customerName: name.text,
                          customersNum: phoneNum.text,
                          dob: dob.text,
                          model: model.text,
                          merk: merk.text,
                          picture: state.path!,
                          createdBy: 1,
                        );
                        context
                            .read<CustomersBloc>()
                            .add(AddCustomers(customer: customer));
                      }

                      // }
                    },
                    value: state.value,
                    key1: key1,
                    name: name,
                    phoneNum: phoneNum,
                    dob: dob,
                    key2: key2,
                    merk: merk,
                    model: model,
                    key3: key3,
                    file: state.text,
                  );
                } else {
                  return const Text("Something Wrong");
                }
              },
            ),
          ),
        ));
  }
}

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.key1,
    required this.name,
    required this.phoneNum,
    required this.dob,
    required this.key2,
    required this.merk,
    required this.model,
    required this.value,
    required this.onPress,
    required this.date,
    required this.key3,
    this.file,
  }) : super(key: key);

  final GlobalKey<FormState> key1;
  final TextEditingController name;
  final TextEditingController phoneNum;
  final TextEditingController dob;
  final GlobalKey<FormState> key2;
  final GlobalKey<FormState> key3;
  final TextEditingController merk;
  final TextEditingController model;
  final TextEditingController date;
  final int value;
  final VoidCallback onPress;
  final File? file;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Form(
            key: key1,
            child: Column(
              children: [
                CustomTextField(
                  text: "Name",
                  icon: Icons.person,
                  controller: name,
                  autovalidateMode: AutovalidateMode.always,
                  enabled: (value == 1),
                  validator: Validator().checkEmpty,
                ),
                CustomTextField(
                  text: "No. HP",
                  icon: Icons.phone,
                  controller: phoneNum,
                  autovalidateMode: AutovalidateMode.always,
                  enabled: (value == 1),
                  keyboardType: TextInputType.number,
                  validator: Validator().checkNumberPhone,
                ),
                // CustomTextField(
                //   text: "Tanggal Lahir",
                //   onTap: () {},
                //   controller: dob,
                //   autovalidateMode: AutovalidateMode.always,
                //   enabled: (value == 1),
                //   validator: Validator().checkEmpty,
                // ),
                DatePicker(
                  controller: date,
                  enabled: (value == 1),
                  validator: Validator().checkEmpty,
                )
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: (value > 1)
              ? Form(
                  key: key2,
                  child: Column(
                    children: [
                      CustomTextField(
                        icon: Icons.branding_watermark_rounded,
                        text: "Merk Kendaraan",
                        autovalidateMode: AutovalidateMode.always,
                        controller: merk,
                        enabled: (value == 2),
                        validator: Validator().checkEmpty,
                      ),
                      CustomTextField(
                        icon: Icons.motorcycle,
                        text: "Nama Model",
                        // enabled: false,
                        autovalidateMode: AutovalidateMode.always,
                        controller: model,
                        enabled: (value == 2),
                        validator: Validator().checkEmpty,
                      )
                    ],
                  ),
                )
              : const SizedBox(),
        ),
        SliverToBoxAdapter(
          child: (value > 2)
              ? Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Upload KTP"),
                      Form(
                        key: key3,
                        child: FormField(
                          validator: (File? value) {
                            if (file == null) {
                              return "Please upload picture";
                            }
                            return null;
                          },
                          autovalidateMode: AutovalidateMode.always,
                          builder: (FormFieldState<File> field) {
                            return InputDecorator(
                              decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.all(0))
                                  .applyDefaults(
                                    Theme.of(field.context)
                                        .inputDecorationTheme,
                                  )
                                  .copyWith(errorText: field.errorText),
                              child: SizedBox(
                                height: 155,
                                width: 400,
                                child: TextButton(
                                  onPressed: () {
                                    context
                                        .read<CustomersBloc>()
                                        .add(AddPicture(value: value));
                                  },
                                  child: (file == null)
                                      ? Container(
                                          width: 400,
                                          height: 155,
                                          color: Colors.grey,
                                          child: const FittedBox(
                                            child: Icon(
                                              Icons.camera_alt_outlined,
                                              color: Colors.black,
                                            ),
                                          ),
                                        )
                                      : Container(
                                          width: 400,
                                          height: 155,
                                          decoration: BoxDecoration(
                                              color: Colors.grey,
                                              image: DecorationImage(
                                                  image: FileImage(file!))),
                                        ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                )
              : const SizedBox(),
        ),
        CustomButton(
          onPressed: onPress,
          text: "Next",
        )
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomButton({
    required this.text,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 50),
        child: OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            side: BorderSide(
              width: 2,
              color: Colors.primaries[7],
            ),
          ),
          child: Text(
            text,
          ),
        ),
      ),
    );
  }
}
