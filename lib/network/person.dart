class Person {
  final int id;
  final String name;
  final String email;

  const Person({required this.id, required this.name, required this.email});

  factory Person.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {'id': int id, 'name': String name, 'email': String email} => Person(
        id: id,
        name: name,
        email: email,
      ),
      _ => throw const FormatException('Failed to load Persons.'),
    };
  }
}
