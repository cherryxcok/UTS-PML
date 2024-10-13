import 'package:flutter/material.dart';
import 'main.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Controllers untuk setiap input field
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Register"),
        backgroundColor: const Color.fromRGBO(255, 135, 203, 1),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Text(
            "Silahkan Register",
            style: TextStyle(fontSize: 32),
          ),
          SizedBox(height: 22),
          TextField(
            controller: _emailController,
            decoration: InputDecoration(
              labelText: "Email ID",
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 22),
          TextField(
            controller: _usernameController,
            decoration: InputDecoration(
              labelText: "User ID",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 22),
          TextField(
            controller: _phoneController,
            decoration: InputDecoration(
              labelText: "Phone",
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.phone,
          ),
          SizedBox(height: 22),
          TextField(
            controller: _passwordController,
            decoration: InputDecoration(
              labelText: "Create a Password",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 22),
          TextField(
            controller: _confirmPasswordController,
            decoration: InputDecoration(
              labelText: "Re-enter Password",
              border: OutlineInputBorder(),
            ),
            obscureText: true,
          ),
          SizedBox(height: 22),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MyApp();
              }));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(255, 135, 203, 1),
              foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            ),
            child: Text("Kembali"),
          ),
        ],
      ),
    );
  }
}
