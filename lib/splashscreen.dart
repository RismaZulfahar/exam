import 'package:flutter/material.dart';
import 'package:ulgn/registration.dart';
// import 'package:ulgn/registration.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240,244,243,1),
      body: Stack(
        children: <Widget>[
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
          Positioned(
            top: 200,
            left: 80,
            width: 200,
            height: 200,
            child: Image.asset('assets/org.png'),
          ),
          const Positioned(
            top: 400,
            left: 110,
            
            child: Text(
              'Gets things with TODs',
              // maxLines: 1,
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Positioned(
            top: 450,
            left: 90, 
            right: 90, 
            child: Center(
              child: Text(
                'Lorem ipsum dolor sit amet consectetur. Eget sit nec et euismod. Consequat urna quam felis interdum quisque. Malesuada adipiscing tristique ut eget sed.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13, 
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 50,
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
                  MaterialPageRoute(builder: (context) => const Registration()),
                );
              },
              child: const Text('Get Started',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
            
            ),
          ),
          
        ],
      ),
    );
  }
}
