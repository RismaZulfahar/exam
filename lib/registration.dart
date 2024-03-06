import 'package:flutter/material.dart';
import 'package:ulgn/dashboard.dart';
import 'package:ulgn/login.dart';

void main() {
  runApp(const Registration());
}

class Registration extends StatelessWidget {
  const Registration({Key? key});

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
      backgroundColor: Color.fromRGBO(240,244,243,1),
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
        top: 200,
        left: 100,
        child: Text('Welcome to Onboard!',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
      ),
      const Positioned(
        top: 250,
        left: 100,
        width: 203,
        child: Text('Let’s help to meet up your tasks.',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poppins',
                fontSize: 13,
                fontWeight: FontWeight.w200
              ),),
      ),

      Positioned(
            top: 300,
            left: 20,
            right: 20,
            child: Container(
              padding: EdgeInsets.only(left: 10.0),
              decoration:BoxDecoration(color: Colors.white, 
              borderRadius: BorderRadius.circular(15), // Atur border radius
              ),
            child:
              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: 'Enter your full name',
                  border: InputBorder.none
                ),
              ),
          ),
          ),
          Positioned(
            top: 380,
            left: 20,
            right: 20,
            child: Container(
              padding: EdgeInsets.only(left: 10.0),
              decoration:BoxDecoration(color: Colors.white, 
              borderRadius: BorderRadius.circular(15), // Atur border radius
              ),
            child:
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Enter your email',
                  border: InputBorder.none
                ),
              ),
          ),
          ),

          Positioned(
            top: 460,
            left: 20,
            right: 20,
            child: Container(
              padding: EdgeInsets.only(left: 10.0),
              decoration:BoxDecoration(color: Colors.white, 
              borderRadius: BorderRadius.circular(15), // Atur border radius
              ),
            child:
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Enter Password',
                  border: InputBorder.none
                ),
              ),
          ),
          ),

          Positioned(
            top: 540,
            left: 20,
            right: 20,
            child: Container(
              padding: EdgeInsets.only(left: 10.0),
              decoration:BoxDecoration(color: Colors.white, 
              borderRadius: BorderRadius.circular(15), // Atur border radius
              ),
            child:
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  border: InputBorder.none
                ),
              ),
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
              child: const Text('Register',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
            
            ),
          ),
         const Positioned(
            bottom: 20,
            left: 80,
            child: Text('Already have an account?',
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
                  MaterialPageRoute(builder: (context) => Login()), 
                );
              },
              child: const Text(
                'Sign in',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromRGBO(80, 194, 201, 1),
                  decoration: TextDecoration.none,
                ),
              ),
            ),
        )])
    );
  }
}
