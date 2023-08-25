import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'LogIn.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        fontFamily: 'Inter',

      ),
      home: const FirstScreen(),
      routes: {
        'User': (_) => const FirstScreen(),
        'LogInScreen': (_) => LogIn(),
        //'SignUpScreen': (_) => SignIn(),
      },
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  child: const Image(image: AssetImage('assets/images/homeworkicon.png'),),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ConstrainedBox(
                    constraints: const BoxConstraints.tightFor(
                      width: 150,
                      height: 100,
                    ),
                    child: TextButton(
                        style: ButtonStyle(
                          backgroundColor:

                          MaterialStateProperty.all<Color>(const Color.fromRGBO(127, 202, 201, 50)),
                          foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed('LogInScreen');
                        },
                        child: const Text('Log In', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)),
                  ),
                  ConstrainedBox(
                    constraints: const BoxConstraints.tightFor(
                      width: 150,
                      height: 100,
                    ),
                    child: OutlinedButton(
                        style: ButtonStyle(
                          foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        onPressed: () {},
                        child: const Text('Sign Up', style: TextStyle(fontSize: 30),)),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              )
            ],
          ),
        ));
  }
}
