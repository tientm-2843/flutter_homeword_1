import 'package:flutter/material.dart';
import 'package:flutter_homework_1/View/TopView.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color.fromRGBO(255, 120, 69, 1),
            Color.fromRGBO(245, 50, 111, 1)
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: <Widget>[
            const SignInTopView(),
            const SizedBox(
              height: 75,
            ),
            const CustomButton(text: "Sign in with Facebook", imageName: 'fb'),
            const SizedBox(
              height: 20,
            ),
            const CustomButton(text: "Sign in with Twitter", imageName: 'twitter'),
            const SizedBox(
              height: 20,
            ),
            const CustomButton(text: "Sign Up", imageName: ''),
            const SizedBox(height: 10,),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("ALREADY REGISTERED? SIGN IN",
                    style: TextStyle(
                    shadows: [Shadow(color: Colors.white, offset: Offset(0, -1))],
                    color: Colors.transparent,
                    decorationThickness: 2,
                    decorationColor: Colors.white,
                    decorationStyle: TextDecorationStyle.solid,
                    decoration: TextDecoration.underline)))
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.text, required this.imageName})
      : super(key: key);

  final String text;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 315,
      height: 60,
      child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ))),
          child: Row(
            mainAxisAlignment: imageName.isEmpty
                ? MainAxisAlignment.center
                : MainAxisAlignment.start,
            children: [
              if (!imageName.isEmpty) ...[
                Image.asset(
                  'assets/images/$imageName.png',
                  width: 40,
                  height: 50,
                ),
                const SizedBox(
                  width: 1,
                  height: 29,
                  child: DecoratedBox(
                      decoration: BoxDecoration(color: Colors.red)),
                ),
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.only(right: 40),
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ))
              ] else ...[
                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                )
              ]
            ],
          )),
    );
  }
}
