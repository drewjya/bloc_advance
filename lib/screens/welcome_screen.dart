import 'package:bloc_advance/blocs/auth/auth_bloc.dart';
import 'package:bloc_advance/blocs/customers/customers_bloc.dart';
import 'package:bloc_advance/constants/routes.dart';
import 'package:bloc_advance/models/customers_receive.dart';
import 'package:bloc_advance/models/users_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthLogout) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Logout Success"),
              duration: Duration(milliseconds: 500),
            ),
          );
          Navigator.pushReplacementNamed(context, NameRoute.landing);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Data Konsumen"),
              IconButton(
                  onPressed: () {
                    context.read<AuthBloc>().add(const LogoutAuth());
                  },
                  icon: const Icon(Icons.delete))
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, state) {
                    if (state is AuthSuccess) {
                      return WelcomeCustomers(user: state.user);
                    } else if (state is AuthLogout) {
                      return WelcomeCustomers(user: state.user);
                    } else if (state is AuthLoading) {
                      return WelcomeCustomers(user: state.usermodel!);
                    } else if (state is AuthLoaded) {
                      return WelcomeCustomers(user: state.user!);
                    } else {
                      return const Center(child: Text("Error"));
                    }
                  },
                ),
              ),
              BlocBuilder<CustomersBloc, CustomersState>(
                builder: (context, state) {
                  if (state is CustomersLoading || state is CustomersButton) {
                    return const SliverToBoxAdapter(
                      child: SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      ),
                    );
                  } else if (state is CustomersLoaded) {
                    return (state.customers.isEmpty)
                        ? const SliverToBoxAdapter(
                            child: SizedBox(
                              height: 200,
                              width: double.infinity,
                              child: Center(
                                child: Text("There's No Data Yet"),
                              ),
                            ),
                          )
                        : SliverToBoxAdapter(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 5),
                              height: MediaQuery.of(context).size.height * 0.78,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                              child: ListView.builder(
                                itemBuilder: (context, index) => ListItem(
                                  width: MediaQuery.of(context).size.width,
                                  length: state.customers.length,
                                  customers: state.customers[index],
                                  index: index,
                                ),
                                itemCount: state.customers.length,
                              ),
                            ),
                          );
                  } else {
                    return const SliverToBoxAdapter(
                      child: SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: Center(
                          child: Text("Something Wrong"),
                        ),
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.read<CustomersBloc>().add(const ButtonCustomers(value: 0));
            Navigator.pushNamed(context, NameRoute.add);
          },
          child: const Icon(
            Icons.add,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          shape: CircleBorder(
            side: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final CustomerReceive customers;
  final int length;
  final int index;
  final double width;
  const ListItem({
    required this.customers,
    required this.length,
    required this.index,
    required this.width,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      height: 70,
      width: double.infinity,
      child: SizedBox(
        height: 70,
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${customers.customerName} (${customers.customersNum})",
                      style: const TextStyle(fontSize: 16),
                    ),
                    const Text(
                      "Jl. MT Haryono no. 11 Jakarta Timur, 13330",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                SizedBox(
                  width: width * 0.13,
                  child: IconButton(
                      onPressed: () {
                        context
                            .read<CustomersBloc>()
                            .add(DeleteCustomer(customerReceive: customers));
                      },
                      icon: const Icon(
                        Icons.delete,
                        size: 18,
                      )),
                )
              ],
            ),
            (index != length - 1)
                ? Divider(
                    thickness: 1,
                    color: Theme.of(context).primaryColor,
                  )
                : const SizedBox(
                    height: 0,
                  )
          ],
        ),
      ),
    );
  }
}

class WelcomeCustomers extends StatelessWidget {
  final UserModel user;
  const WelcomeCustomers({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(8, 10, 10, 20),
      child: Text.rich(
        TextSpan(
          text: "Selamat Datang, ",
          style: const TextStyle(fontSize: 16),
          children: [
            TextSpan(
              text: user.username,
              style: const TextStyle(
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
