import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:untitled/user//login.dart';
import 'package:untitled/user/register.dart';

class BoardingScreen extends StatelessWidget {
  final Color kDarkBlueColor = const Color(0xFF053149);
  const BoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      finishButtonText: 'Get Started',
      onFinish: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Register(),
          ),
        );
      },
      finishButtonColor: Colors.indigo,
      skipTextButton: const Text(
        'Skip',
        style: TextStyle(fontSize: 16, color: Colors.indigo, fontWeight: FontWeight.w600,),
      ),
      trailing: const Text(
        'Login',
        style: TextStyle(fontSize: 16, color: Colors.indigo, fontWeight: FontWeight.w600,),
      ),
      trailingFunction: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Login(),
          ),
        );
      },
      controllerColor: Colors.indigo,
      totalPage: 3,
      headerBackgroundColor: Colors.white,
      pageBackgroundColor: Colors.white,
      background: [
       Image.asset('images/onboarding1.png', width: 445,),
        Image.asset('images/onboarding2.png'),
        Image.asset('images/onboarding3.png'),
      ],
      speed: 1.8,
      pageBodies: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 400,
              ),
              Text(
                'Find Your Favorite Lesson',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kDarkBlueColor,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Anyone can join the millions of members in our community to learn cutting edge skills',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black26,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 480,
              ),
              Text(
                'You’ve reached your destination.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kDarkBlueColor,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'One more step to go ahead',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black26,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 480,
              ),
              Text(
                'Discover Useful Resources',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kDarkBlueColor,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Where everything is possible and customize your preference.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black26,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}