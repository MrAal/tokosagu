import 'package:flutter/material.dart';
import 'SignUp.dart'; // Import sign up page

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToSignUp();
  }

  _navigateToSignUp() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const SignUpPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.flash_on,
              size: 100.0,
              color: Colors.deepPurple,
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to MyApp',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
