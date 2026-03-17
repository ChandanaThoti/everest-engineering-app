import 'package:everest_engineering/services/person_service.dart';
import 'package:flutter/material.dart';

class PersonState extends StatefulWidget {
  final int? id;
  final String? name;
  final String? email;
  const PersonState({super.key, this.id, this.name, this.email});
  @override
  State<PersonState> createState() => _PersonForm();
}

class _PersonForm extends State<PersonState> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  late int id;
  @override
  void initState() {
    super.initState();
    if (widget.id != null) {
      id = widget.id!;
    }
    _nameController.text = widget.name ?? " ";
    _emailController.text = widget.email ?? " ";
  }

  final emailRegex = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
  );

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          spacing: 25,
          children: [
            Text(widget.id != null ? "Edit Person " : "Add Person "),
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: _nameController.text,
                labelText: "Person Name",
                border: OutlineInputBorder(),
              ),
            ),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                hintText: _emailController.text,
                labelText: "Email",
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Email is required';
                }
                if (!emailRegex.hasMatch(value)) {
                  return "Enter Valid email";
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: () => {
                if (widget.id != null)
                  {
                    ApiServices.editPerson(
                      id,
                      _nameController.text,
                      _emailController.text,
                    ),
                  }
                else
                  {
                    ApiServices.addPerson(
                      _nameController.text,
                      _emailController.text,
                    ),
                  },
              },
              child: Text(widget.id != null ? "Edit" : "Add"),
            ),
          ],
        ),
      ),
    );
  }
}
