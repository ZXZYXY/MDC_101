import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_application_mdc101/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 180,
              ),
              const Image(image: AssetImage("assets/img/diamond.png")),
              const Padding(
                padding: EdgeInsets.all(9.0),
                child: Text("SHRINE"),
              ),
              const SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      filled: true,
                      label: Text("Namapanggilan"),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      filled: true,
                      label: Text("Kunci"),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  TextButton(
                      onPressed: () {
                        _usernameController.clear();
                        _passwordController.clear();
                      },
                      child: const Text("BATAL")),
                  ElevatedButton(
                      onPressed: () {
                        if (_usernameController.text == "admin" &&
                            _passwordController.text == "admin") {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text("Login Bisa Bang"),
                            backgroundColor: Colors.greenAccent,
                          ));
                          Navigator.pushNamed(context, '/home');
                          /*
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                          */
                        } else {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text("Login Ga Bisa Bang"),
                            backgroundColor: Color.fromARGB(255, 255, 26, 10),
                          ));
                          _usernameController.clear();
                          _passwordController.clear();
                        }
                      },
                      child: const Text("GASS")),
                ]),
              ),
              /* 
              SizedBox(),
              Image(image: image),
              Text(data),
              SizedBox(),
              TextField(),
              TextField(),
              TextButton(onPressed: onPressed, child: child),
              ElevatedButton(onPressed: onPressed, child: child)
              */
            ],
          ),
        ),
      ),
    );
  }
}
