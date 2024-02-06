import 'package:flutter/material.dart';
import 'package:freezed_impl/freezed_class.dart';

void main() {
  // final user = User('Tony', 25, 'tony@gmail.com');
  // final user2 = user.copyWith(age: 40,name: 'Tonio');
  //
  // final serialized = user.toJson();
  // final deserialized = User.fromJson(serialized);
  //
  // print(user);
  // print(user2);

  var value = performOperation(2, const OperationNested.add(3));
}

int performOperation(int operand, OperationNested operation) {
  return operation.when(
    add: (value) => operand + value,
    subtract: (value) => operand - value,
  );
}
