import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Sign Up',
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              buttonItem("assets/google.svg", "Continue with Google", 25),
              const SizedBox(
                height: 15,
              ),
              buttonItem("assets/phone.svg", "Continue with Phone", 25),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Or",
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
              const SizedBox(
                height: 15,
              ),
              textItem("Email"),
              const SizedBox(
                height: 15,
              ),
              textItem("Password"),
              const SizedBox(
                height: 30,
              ),
              colorButton()
            ],
          ),
        ),
      ),
    );
  }

  Widget colorButton() {
    return Container(
      width: MediaQuery.of(context).size.width -  90,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [
            Color(0xfffd746c),
            Color(0xffff9068),
            Color(0xfffd746c),
          ],
        ),
      ),
      child: Center(child: Text('Sign Up', style: TextStyle(color: Colors.white, fontSize: 25),)),
    );
  }

  Widget textItem(String inputLabel) {
    return Container(
      width: MediaQuery.of(context).size.width - 60,
      height: 55,
      child: TextFormField(
        decoration: InputDecoration(
            labelText: inputLabel,
            labelStyle: TextStyle(fontSize: 17, color: Colors.white),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(width: 1, color: Colors.grey))),
        cursorColor: Colors.white,
        style: const TextStyle(
            color: Colors.white, fontSize: 15, letterSpacing: 0.4),
      ),
    );
  }

  Widget buttonItem(String imagePath, String btnText, double btnSize) {
    return Container(
      width: MediaQuery.of(context).size.width - 60,
      height: 60,
      child: Card(
        color: Colors.black,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: const BorderSide(width: 1, color: Colors.grey)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              imagePath,
              height: btnSize,
              width: btnSize,
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              btnText,
              style: TextStyle(fontSize: 20, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
