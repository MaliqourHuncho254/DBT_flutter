import 'package:flutter/material.dart';
import 'register_component.dart'; // Assuming register_component.dart contains the improved RegisterComponent

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DTB Mobile Banking',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const RegisterPage(),
    );
  }
}

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            // Handle back button press (e.g., navigate to a previous page)
          },
        ),
        title: const Text('DTB Mobile Banking Registration'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: RegisterComponent(),
      ),
    );
  }
}
