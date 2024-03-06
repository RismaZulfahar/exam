import 'package:flutter/material.dart';
import 'package:ulgn/registration.dart';
import 'package:ulgn/dashboard.dart';
// import 'package:ulgn/';
void main() {
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Register',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();

  bool hidepass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(240, 244, 243, 1),
        body: Stack(children: <Widget>[
          Positioned(
            top: -20,
            left: -100,
            child: Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(143, 225, 215, 50),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: -100,
            left: -30,
            child: Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(143, 225, 215, 50),
                shape: BoxShape.circle,
              ),
            ),
          ),
          const Positioned(
            top: 150,
            left: 120,
            child: Text(
              'Welcome back',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: 200,
            left: 100,
            width: 200,
            height: 200,
            child: Image.asset('assets/anakibu.png'),
          ),
          Positioned(
            top: 380,
            left: 20,
            right: 20,
            child: Container(
              padding: EdgeInsets.only(left: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15), // Atur border radius
              ),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                    labelText: 'Enter your email', border: InputBorder.none),
              ),
            ),
          ),
          Positioned(
            top: 460,
            left: 20,
            right: 20,
            child: Container(
              padding: EdgeInsets.only(left: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15), // Atur border radius
              ),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                    labelText: 'Enter Password', border: InputBorder.none),
              ),
            ),
          ),
          const Positioned(
            top: 540,
            left: 140,
            width: 203,
            child: Text(
              'Forget Password?',
              style: TextStyle(
                  color: Color.fromRGBO(80, 194, 201, 1),
                  fontFamily: 'Poppins',
                  fontSize: 13,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Positioned(
            bottom: 70,
            left: 20,
            right: 20,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.fromLTRB(73, 10, 73, 15),
                backgroundColor: const Color.fromRGBO(80, 194, 201, 1),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Dashboard()),
                );
              },
              child: const Text('Login',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),), ),
          ),
          const Positioned(
            bottom: 20,
            left: 80,
            child: Text('Don/t have an account?',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                  ),),
          ),
          Positioned(
            bottom: 20,
            right: 45,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Registration()), 
                );
              },
              child: const Text(
                'Sign up',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromRGBO(80, 194, 201, 1),
                  decoration: TextDecoration.none,
                ),
              ),
            ),
        )
        ]
        )
    
        );
  }
}
