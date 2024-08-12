import 'package:flutter/material.dart';
import 'package:invoice_ui/view/login_view.dart';
import 'package:invoice_ui/view/navigationbar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splashview extends StatefulWidget {
  const Splashview({super.key});

  @override
  State<Splashview> createState() => _SplashviewState();
}

class _SplashviewState extends State<Splashview> {
  void checklogin() async {
    final Prefers = await SharedPreferences.getInstance();
    var val = Prefers.getBool("islogin");
    if (val != null) {
      if (val) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Navigationbar()));
      } else {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LoginView()));
      }
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const LoginView()));
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checklogin();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
