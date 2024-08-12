import 'package:flutter/material.dart';
import 'package:invoice_ui/view/register_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'navigationbar.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  void issave() async {
    final prefers = await SharedPreferences.getInstance();
    prefers.setBool("key", true);
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Navigationbar(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(
            Icons.language,
            color: Colors.blue,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "English",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w800, fontSize: 20),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Login",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w800),
              ),
              const Text(
                "Login to your account",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 32, 48, 62)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 32, 48, 62)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 32, 48, 62)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: const Icon(
                      Icons.person_3_outlined,
                      color: Colors.blue,
                    ),
                    label: const Text(
                      "Username",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    )),
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 32, 48, 62)),
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 32, 48, 62)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 32, 48, 62)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: const Icon(
                      Icons.key_outlined,
                      color: Colors.blue,
                    ),
                    suffixIcon: const Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.blue,
                    ),
                    label: const Text(
                      "Password",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    )),
              ),
              const SizedBox(
                height: 15,
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgortten Password?",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  )),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 50,
                child: ElevatedButton.icon(
                    style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.blue)),
                    icon: const Icon(
                      Icons.arrow_forward,
                    ),
                    iconAlignment: IconAlignment.end,
                    onPressed: () {
                      issave();
                    },
                    label: const Text(
                      "Sign in",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    )),
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an Account?",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RegisterView(),
                            ));
                      },
                      child: const Text(
                        "Sign up now!",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
