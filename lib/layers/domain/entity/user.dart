class User {
  User({required this.id, required this.name, required this.lastName});

  int id;
  String name;
  String lastName;

  Map<String, dynamic> toMap() => {
    'id': id,
    'name': name,
    'lastName': lastName,
  };

  factory User.fromMap(Map<String, dynamic> json) =>
      User(id: json['id'], name: json['name'], lastName: json['lastName']);
}
