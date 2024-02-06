import 'package:flutter/material.dart';
import 'package:freezed_impl/freezed_class.dart';

void main() {
  final user = User('Tony', 25, 'tony@gmail.com');
  final user2 = user.copyWith(age: 40,name: 'Tonio');

  final serialized = user.toJson();
  final deserialized = User.fromJson(serialized);

  print(user);
  print(user2);
}
