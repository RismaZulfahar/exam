import 'package:flutter/material.dart';

void main() {
  runApp(const Dashboard());
}

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key});

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
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 3, // Setengah dari tinggi layar
              color: Color(0xFF50C2C9), // Warna biru pada bagian atas
            ),
          ),
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
            top: 80,
            left: 100,
            width: 200,
            height: 200,
            child: Image.asset('assets/senja.png'),
          ),
          const Positioned(
            top: 230,
            left: 100,
            child: Text(
              'Welcome Jeegar goyani',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Positioned(
            top: 320,
            right: 50,
            child: Text(
              'Good Afternoon',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: 330,
            left: 100,
            width: 200,
            height: 200,
            child: Image.asset('assets/clock (2).png'),
          ),
        
          const Positioned(
            top: 500,
            left: 30,
            child: Text(
              'Task List',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Container(
              width: 382,
              height: 309,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Daily task'),
                        Icon(Icons.add),
                      ],
                    ),
                    SizedBox(height: 20),
                    TaskItem(
                      description: 'Learning Programming by 12PM',
                      isChecked: true,
                    ),
                    TaskItem(
                      description: 'Learn how to cook by 1PM',
                      isChecked: false,
                    ),
                    TaskItem(
                      description: 'Learn how to play at 2PM',
                      isChecked: false,
                    ),
                    TaskItem(
                      description: 'Have lunch at 4PM',
                      isChecked: false,
                    ),
                    TaskItem(
                      description: 'Going to travel 6PM',
                      isChecked: false,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TaskItem extends StatelessWidget {
  final String description;
  final bool isChecked;

  TaskItem({required this.description, required this.isChecked});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: isChecked ? Color(0xff50C2C9) : Color.fromRGBO(255, 255, 255, 1),
            border: Border.all(color: Colors.black),
          ),
        ),
        SizedBox(width: 10),
        Text(description),
      ],
    );
  }
}

          
   

