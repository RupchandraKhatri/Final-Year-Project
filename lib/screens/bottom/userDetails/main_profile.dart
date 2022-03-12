// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:hamro_saman/Welcome/home.dart';
import 'package:hamro_saman/screens/bottom/userDetails/edit_profile.dart';

class MainProfile extends StatelessWidget {
  const MainProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 30),
        child: ListView(
          children: [
            Text(
              "View Profile",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 25),
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 5,
                        color: Colors.green,
                      ),
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.1),
                            offset: Offset(0, 10)),
                      ],
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/profile.jpg"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Divider(
              height: 15,
              thickness: 3,
            ),
            SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => EditProfile()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Edit Profile",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            GestureDetector(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Change Password",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                color: Colors.red,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "Sign Out",
                  style: TextStyle(
                    fontSize: 15,
                    letterSpacing: 2.2,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
