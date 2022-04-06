import 'dart:convert';

import 'package:equatable/equatable.dart';

// "customerId"	INTEGER NOT NULL,
// "customerName"	TEXT NOT NULL DEFAULT "",
// "customersNum"	TEXT NOT NULL DEFAULT "",
// "dob"	TEXT NOT NULL DEFAULT "",
// "model"	TEXT NOT NULL DEFAULT "",
// "merk"	TEXT NOT NULL DEFAULT "",
// "picture"	TEXT,
// "createdBy"	INTEGER NOT NULL,
// PRIMARY KEY("customerId" AUTOINCREMENT),
// FOREIGN KEY("createdBy") REFERENCES "users"("id")

class Customers extends Equatable {
  final String customerName;
  final String customersNum;
  final String dob;
  final String model;
  final String merk;
  final String picture;
  final int createdBy;
  const Customers({
    required this.customerName,
    required this.customersNum,
    required this.dob,
    required this.model,
    required this.merk,
    required this.picture,
    required this.createdBy,
  });

  Customers copyWith({
    String? customerName,
    String? customersNum,
    String? dob,
    String? model,
    String? merk,
    String? picture,
    int? createdBy,
  }) {
    return Customers(
      customerName: customerName ?? this.customerName,
      customersNum: customersNum ?? this.customersNum,
      dob: dob ?? this.dob,
      model: model ?? this.model,
      merk: merk ?? this.merk,
      picture: picture ?? this.picture,
      createdBy: createdBy ?? this.createdBy,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'customerName': customerName,
      'customersNum': customersNum,
      'dob': dob,
      'model': model,
      'merk': merk,
      'picture': picture,
      'createdBy': createdBy,
    };
  }

  factory Customers.fromMap(Map<String, dynamic> map) {
    return Customers(
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

  factory Customers.fromJson(String source) =>
      Customers.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Customers(customerName: $customerName, customersNum: $customersNum, dob: $dob, model: $model, merk: $merk, picture: $picture, createdBy: $createdBy)';
  }

  @override
  List<Object> get props {
    return [
      customerName,
      customersNum,
      dob,
      model,
      merk,
      picture,
      createdBy,
    ];
  }
}
