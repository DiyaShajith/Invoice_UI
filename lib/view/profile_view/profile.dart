import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.edit_calendar_outlined,
            color: Colors.white,
            size: 30,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: size.width ,height: size.height*0.35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                ), Positioned(bottom: 0,left: 0,right: 0,
                  child: Container(
                    width: size.width ,height: size.height*0.3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.red),child: Column(children: [],),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
