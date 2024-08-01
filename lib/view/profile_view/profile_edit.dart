import 'package:flutter/material.dart';
import 'package:invoice_ui/view/profile_view/profile.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({super.key});

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
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
      ),body: SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Container(
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Update",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w800),
            ),

            SizedBox(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Color.fromARGB(255, 32, 48, 62)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Color.fromARGB(255, 32, 48, 62)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Color.fromARGB(255, 32, 48, 62)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(
                    Icons.person_3_outlined,
                    color: Colors.blue,
                  ),
                  label: Text(
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
                      borderSide:
                      BorderSide(color: Color.fromARGB(255, 32, 48, 62)),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Color.fromARGB(255, 32, 48, 62)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Color.fromARGB(255, 32, 48, 62)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: Colors.blue,
                  ),
                  label: Text(
                    "Email",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  )),
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Color.fromARGB(255, 32, 48, 62)),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Color.fromARGB(255, 32, 48, 62)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Color.fromARGB(255, 32, 48, 62)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(
                    Icons.phone_android_outlined,
                    color: Colors.blue,
                  ),
                  label: Text(
                    "Phone",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  )),
            ),

            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 55,
              child: ElevatedButton.icon(
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.blue)),
                  icon: Icon(
                    Icons.arrow_forward,
                  ),
                  iconAlignment: IconAlignment.end,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Profile(),
                        ));
                  },
                  label: Text(
                    "Update",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  )),
            ),


          ],
        ),
      ),
    ),
    );
  }
}
