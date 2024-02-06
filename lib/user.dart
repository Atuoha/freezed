class User {
  final String name;
  final int age;
  final String email;

  const User({
    required this.name,
    required this.age,
    required this.email,
  });

  User copyWith({
    String? name,
    int? age,
    String? email,
  }) {
    return User(
      name: name ?? this.name,
      age: age ?? this.age,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
      'email': email,
    };
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'] as String,
      age: json['age'] as int,
      email: json['email'] as String,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          age == other.age &&
          email == other.email;

  @override
  int get hashCode => name.hashCode ^ age.hashCode ^ email.hashCode;

  @override
  String toString() {
    return 'User{name: $name, age: $age, email: $email}';
  }
}
