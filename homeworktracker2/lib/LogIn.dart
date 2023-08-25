import 'package:flutter/material.dart';
import 'main.dart';
class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 100),
            const Text('Login to Your Account', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 50,),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(45.0),
                ),
                hintText: 'Email',
              ),
            ),
            const SizedBox(height: 50,),
            TextField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(45.0),
                ),
                hintText: 'Password',
              ),
            ),
            const SizedBox(height: 50,),
            ConstrainedBox(
              constraints: const BoxConstraints.tightFor(
                width: 75,
                height: 50,
              ),
              child: TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(const Color.fromRGBO(127, 202, 201, 50)),
                    foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  onPressed: () {

                  },
                  child: const Text('Log In', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)),
            ),

          ],
        ),
      ),
    );
  }
}
class Authentication {
  void firebaseSendOff(){

  }
}
