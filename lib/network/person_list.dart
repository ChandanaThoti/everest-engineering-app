import 'package:everest_engineering/network/person.dart';
import 'package:everest_engineering/services/person_service.dart';
import 'package:everest_engineering/widgets/person_form.dart';
import 'package:flutter/material.dart';

class PersonList extends StatefulWidget {
  const PersonList({super.key});
  @override
  PersonListState createState() => PersonListState();
}

class PersonListState extends State<PersonList> {
  late Future<List<Person>> personsFuture = ApiServices.getPerson();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Person>>(
      future: personsFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasData) {
          final persons = snapshot.data!;
          return buildTodos(persons);
        } else {
          return const Text("No data available");
        }
      },
    );
  }

  Widget buildTodos(List<Person> persons) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext bc) {
                return PersonState();
              },
            );
          },
          child: Text('Add Person'),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: persons.length,
            itemBuilder: (context, index) {
              final person = persons[index];
              return Container(
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 200),
                padding: EdgeInsets.all(5),
                height: 80,
                width: 120,
                child: Card(
                  elevation: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(children: [Text(person.name), Text(person.email)]),
                      ElevatedButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext bc) {
                              return PersonState(
                                id: person.id,
                                name: person.name,
                                email: person.email,
                              );
                            },
                          );
                        },
                        child: Text("Edit Person"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          ApiServices.deletePerson(person.id);
                        },
                        child: Icon(Icons.delete),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
