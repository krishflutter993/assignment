import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: guju(), debugShowCheckedModeBanner: false));
}

class guju extends StatefulWidget {
  const guju({super.key});

  @override
  State<guju> createState() => _gujuState();
}

class _gujuState extends State<guju> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController phone = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registration Form"), centerTitle: true),
      body: Padding(
        padding: EdgeInsets.all(18.00),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: name,
                decoration: InputDecoration(
                  hintText: "name",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: email,
                decoration: InputDecoration(
                  hintText: "email",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: pass,
                decoration: InputDecoration(
                  hintText: "password",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter password";
                  }
                  if (value.length < 6) {
                    return "Password must be at least 6 characters";
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: phone,
                decoration: InputDecoration(
                  hintText: "phone number",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter phone number";
                  }
                  if (value.length != 10) {
                    return "Phone number must be 10 digits";
                  }
                  return null;
                },
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Registration Successful!")),
                    );
                  }
                },
                child: Text("Register"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
