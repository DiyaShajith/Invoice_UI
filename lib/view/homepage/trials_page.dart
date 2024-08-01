import 'package:flutter/material.dart';

class TrialsPage extends StatefulWidget {
  const TrialsPage({super.key});

  @override
  State<TrialsPage> createState() => _TrialsPageState();
}

class _TrialsPageState extends State<TrialsPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        leading: Image(
          image: AssetImage("assets/images/google-optimize.png"),
        ),
        title: Text(
          "Trialz",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 28),
        ),
        actions: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Color.fromARGB(255, 37, 78, 129),
            backgroundImage: AssetImage("assets/images/pngaaa 1.png"),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image(
              width: size.width,
              image: AssetImage(
                "assets/images/Frame 60.png",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(12),
              width: size.width * 0.9,
              decoration: BoxDecoration(
                color: Color(0XFF0F0F0F),
              ),
              child: Row(
                children: [
                  Container(
                    width: size.width * 0.13,
                    height: size.height * 0.13,
                    decoration: BoxDecoration(
                      color: Color(0XFFF6EFED),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: Icon(
                      Icons.shield_moon_sharp,
                      color: Colors.grey[800],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Bookings",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "123",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Reserved",
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    width: size.width * 0.2,
                    height: size.height * 0.1,
                    decoration: BoxDecoration(
                        color: Color(0XFF0F0F0F),
                        borderRadius: BorderRadius.circular(15),),child: Icon(Icons.arrow_forward,color: Colors.white,size: 35,),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
