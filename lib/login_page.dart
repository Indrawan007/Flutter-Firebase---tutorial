import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.grey[300],
      body: ListView(
        children: [
          Column(
            children: [
              // icon android
              const Padding(
                padding: EdgeInsets.only(top: 100),
                child: Icon(
                  Icons.android,
                  size: 80,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              // Hello Again,
              Text(
                "HELLO AGAIN!",
                style: GoogleFonts.bebasNeue(fontSize: 52),
              ),
              const SizedBox(
                height: 10,
              ),
              // Welcome,
              const Text(
                "Welcome back, you've been missed!",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 32,
              ),
              // Email & Password ,
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: "Email",
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: TextFormField(
                  obscureText: true,
                  textInputAction: TextInputAction.go,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: "Password",
                  ),
                ),
              ),
              // Sign In
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.deepPurpleAccent),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            15), // Ubah nilai sesuai dengan kebutuhan
                      ),
                    ),
                    minimumSize: MaterialStateProperty.all(
                      const Size(double.infinity, 60),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text("Sign In"),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Not a member? "),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      "Register Now",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    ));
  }
}
