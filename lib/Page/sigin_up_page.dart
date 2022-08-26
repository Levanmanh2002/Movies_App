import 'package:flutter/material.dart';
import 'package:movies_app/Page/login_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.55,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/video.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: const [
                  Positioned(
                    left: 30.0,
                    bottom: 20.0,
                    child: Text(
                      'Sigin Up',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 28.0,
                        letterSpacing: 1.5,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Username',
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  GestureDetector(
                    child: Container(
                      height: 50.0,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: <Color>[Color(0xFF141314), Color(0xFF3B3841)],
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: const Center(
                        child: Text(
                          'Sigin Up',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                    child: const Text(
                      'Do you already have an account?',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
