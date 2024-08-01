import 'package:flutter/material.dart';
import 'package:invoice_ui/view/login_view.dart';
import 'package:invoice_ui/view/profile_view/profile_edit.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(backgroundColor: Color(0XFF111318),
      appBar: AppBar(backgroundColor: Color(0XFF111318),
        actions: [
          InkWell(onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfileEdit(),
              )),
            child: Icon(
              Icons.edit_calendar_outlined,
              color: Colors.white,
              size: 30,
            ),
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
                  width: size.width,
                  height: size.height * 0.35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(12),
                    width: size.width,

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0XFF0F0F0F)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [SizedBox(height: 20,),
                        Text(
                          "David",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Text(
                          "david0012@gmail.com",
                          style: TextStyle(
                              color: Color(0XFFB5CDFE),
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Contact",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Text(
                          "7894561230",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton.icon(
                              style: ButtonStyle(
                                  backgroundColor:
                                      WidgetStatePropertyAll(Colors.black)),
                              icon: Icon(
                                Icons.logout_outlined,
                                color: Colors.red,
                              ),
                              onPressed: () {Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginView(),
                                  ));},
                              label: Text(
                                "Logout",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                              )),
                        )
                      ],
                    ),
                  ),
                ), Align(alignment: Alignment.center,
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0XFF111318),image: DecorationImage(image: AssetImage("assets/images/pngaaa 1.png"))),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
