import 'package:flutter/material.dart';
import 'package:task_1/signup_screen.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Color subTextColor = const Color(0xff757575);
  Color appColor = const Color(0xffA41F57);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(16),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Login Now",
                    style: TextStyle(
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Please sLogin to Continue using our app",
                    style: TextStyle(
                      fontSize: 15,
                      color: subTextColor,
                    ),
                  ),
                  SizedBox(height: 40),
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
                    "or Login with email",
                    style: TextStyle(
                      fontSize: 15,
                      color: subTextColor,
                    ),
                  ),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      cursorColor: appColor,
                      cursorHeight: 27,
                      onTapOutside: (event) => FocusScope.of(context).unfocus(),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: subTextColor,
                            width: 0.85,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(

                            color: appColor,
                            width: 1,
                          ),
                        ),

                        labelText: "Email Address",
                        labelStyle: TextStyle(
                          color: subTextColor,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 23),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextFormField(
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      textInputAction: TextInputAction.done,
                      cursorColor: appColor,
                      cursorHeight: 27,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: subTextColor,
                            width: 0.85,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            //mas2ol 3an el loan beta3 el border nafso mn bara
                            color: appColor,
                            width: 1,
                          ),
                        ),
                        labelText: "Password",
                        labelStyle: TextStyle(
                          color: subTextColor,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
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
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Dont have an account ?",
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
                            "Sign Up",
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
        ),
      ),
    );
  }
}
