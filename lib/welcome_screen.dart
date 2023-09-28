import 'package:flutter/material.dart';
import 'package:task_1/login_screen.dart';
import 'package:task_1/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});

  Color subTextColor = const Color(0xff757575);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Welcome",
                style: TextStyle(
                  letterSpacing: 1,
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Please login or signup to continue using our app.",
                style: TextStyle(
                  fontSize: 15,
                  color: subTextColor,
                ),
              ),
              SizedBox(height: 10),
              Image(
                image: AssetImage("assets/undraw_Traveling_yhxq.png"),
              ),
              SizedBox(height: 10),
              Text(
                "Enter via Social Network",
                style: TextStyle(
                  fontSize: 15,
                  color: subTextColor,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Image(
                          height: 30,
                          width: 30,
                          image: AssetImage("assets/icons8-twitterx-50.png"),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          minimumSize: Size(0, 50),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.facebook_outlined,
                          size: 40,
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff495994),
                          minimumSize: Size(0, 50),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Text(
                "or login with email",
                style: TextStyle(
                  fontSize: 15,
                  color: subTextColor,
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                LoginScreen()), // Navigate to ScreenB
                      );
                    },
                    child: Center(
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Don’t have an account?",
                    style: TextStyle(
                      fontSize: 17,
                      color: subTextColor,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  SignUpScreen()), // Navigate to ScreenB
                        );
                      },
                      child: Text(
                        "Create Now",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
