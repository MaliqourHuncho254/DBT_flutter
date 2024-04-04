import 'package:flutter/material.dart';

class RegisterComponent extends StatefulWidget {
  const RegisterComponent({Key? key}) : super(key: key);

  @override
  State<RegisterComponent> createState() => _RegisterComponentState();
}

class _RegisterComponentState extends State<RegisterComponent> {
  final _formKey = GlobalKey<FormState>(); // Create a form key
  String _username = ""; // String to store username
  String _email = ""; // String to store email
  String _password = ""; // String to store password

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey, // Assign the form key
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: "Username",
              contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter a username";
              }
              return null; // Return null for valid input
            },
            onChanged: (value) => setState(() => _username = value), // Update username on change
          ),
          const SizedBox(height: 10.0), // Add spacing between fields
          TextFormField(
            decoration: InputDecoration(
              labelText: "Email",
              contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter an email";
              } else if (!value.contains("@")) {
                return "Please enter a valid email";
              }
              return null; // Return null for valid input
            },
            onChanged: (value) => setState(() => _email = value), // Update email on change
          ),
          const SizedBox(height: 10.0), // Add spacing between fields
          TextFormField(
            decoration: InputDecoration(
              labelText: "Password",
              contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            obscureText: true, // Hide password characters
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter a password";
              }
              return null; // Return null for valid input
            },
            onChanged: (value) => setState(() => _password = value), // Update password on change
          ),
          const SizedBox(height: 20.0), // Add spacing before button
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // Handle form submission logic here (e.g., call a registration API)
                print("Username: $_username, Email: $_email, Password: $_password"); // Placeholder for registration logic
              }
            },
            child: const Text("Create Account"),
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50), // Set button width
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
