import 'dart:convert';

import 'package:equatable/equatable.dart';

class CustomerReceive extends Equatable {
  final int customerId;
  final String customerName;
  final String customersNum;
  final String dob;
  final String model;
  final String merk;
  final String picture;
  final int createdBy;
  const CustomerReceive({
    required this.customerId,
    required this.customerName,
    required this.customersNum,
    required this.dob,
    required this.model,
    required this.merk,
    required this.picture,
    required this.createdBy,
  });

  @override
  List<Object> get props {
    return [
      customerId,
      customerName,
      customersNum,
      dob,
      model,
      merk,
      picture,
      createdBy,
    ];
  }

  Map<String, dynamic> toMap() {
    return {
      'customerId': customerId,
      'customerName': customerName,
      'customersNum': customersNum,
      'dob': dob,
      'model': model,
      'merk': merk,
      'picture': picture,
      'createdBy': createdBy,
    };
  }

  factory CustomerReceive.fromMap(Map<String, dynamic> map) {
    return CustomerReceive(
      customerId: map['customerId']?.toInt() ?? 0,
      customerName: map['customerName'] ?? '',
      customersNum: map['customersNum'] ?? '',
      dob: map['dob'] ?? '',
      model: map['model'] ?? '',
      merk: map['merk'] ?? '',
      picture: map['picture'] ?? '',
      createdBy: map['createdBy']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory CustomerReceive.fromJson(String source) =>
      CustomerReceive.fromMap(json.decode(source));
}
