import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _usernameCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Login Admin",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      _usernameTextfield(),
                      const SizedBox(
                        height: 20,
                      ),
                      _passwordTextfield(),
                      const SizedBox(
                        height: 20,
                      ),
                      _tombolLogin()
                    ],
                  )),
            )
          ],
        ),
      )),
    );
  }

  Widget _usernameTextfield() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Username tidak boleh kosong';
        }
      },
      decoration: InputDecoration(labelText: "Username"),
      controller: _usernameCtrl,
    );
  }

  Widget _passwordTextfield() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Password tidak boleh kosong';
        }
      },
      decoration: InputDecoration(labelText: "Password"),
      controller: _passwordCtrl,
      obscureText: true,
    );
  }

  Widget _tombolLogin() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {}
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue[400], foregroundColor: Colors.white),
        child: const Text("Login"),
      ),
    );
  }
}
