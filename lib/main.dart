import 'package:flutter/material.dart';
import 'package:invoice_ui/view/homepage/trials_page.dart';
import 'package:invoice_ui/view/login_view.dart';
import 'package:invoice_ui/view/navigationbar.dart';
import 'package:invoice_ui/view/profile_view/profile.dart';
import 'package:invoice_ui/view/profile_view/profile_edit.dart';
import 'package:invoice_ui/view/register_view.dart';
import 'package:invoice_ui/view/splashview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
            brightness: Brightness.dark,
          ),
          useMaterial3: true,
        ),
        home: const Splashview());
  }
}
