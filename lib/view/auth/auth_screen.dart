import 'package:flutter/material.dart';
import 'package:instagram_post/utils/app_colors.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/insta_logo.png",
                    width: size.width / 5,
                  ),
                  const Text(
                    "Instagram",
                    style: TextStyle(
                      fontFamily: 'Billabong',
                      fontSize: 32,
                      letterSpacing: 2,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.02),
              TextFormField(
                cursorColor: AppColors.black,
                decoration: const InputDecoration(
                  filled: true,
                  isDense: true,
                  hintText: "Phone Number, Username or Email",
                  hintStyle: TextStyle(fontSize: 14),
                  fillColor: AppColors.lightGrey,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.01),
              TextFormField(
                cursorColor: AppColors.black,
                decoration: const InputDecoration(
                  filled: true,
                  isDense: true,
                  hintText: "Password",
                  hintStyle: TextStyle(fontSize: 14),
                  fillColor: AppColors.lightGrey,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Container(
                width: double.maxFinite,
                height: size.height * 0.07,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      AppColors.lightYellow,
                      AppColors.lightOrange,
                      AppColors.lightPink,
                      AppColors.lightPurple,
                      AppColors.lightBlue
                    ],
                  ),
                ),
                child: const Text(
                  "LOGIN",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: AppColors.white, fontSize: 16),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              SizedBox(
                height: size.height * 0.07,
                width: size.width,
                child: OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: AppColors.blue)),
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/icons/facebook.png',
                      width: 26,
                    ),
                    label: const Text("Log in with Facebook",
                        style: TextStyle(fontSize: 16))),
              ),
              SizedBox(height: size.height * 0.02),
              const Text("Forget Password?",
                  style: TextStyle(color: Colors.grey)),
              SizedBox(height: size.height * 0.01),
              const Divider(
                indent: 150,
                endIndent: 150,
                color: AppColors.grey,
                thickness: 2,
              ),
              SizedBox(height: size.height * 0.01),
              const Text("Dont't have an account? Sign Up",
                  style: TextStyle(color: AppColors.blue))
            ],
          ),
        ),
      ),
    );
  }
}
