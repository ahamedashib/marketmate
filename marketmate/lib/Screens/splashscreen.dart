import 'package:flutter/material.dart';
import 'package:marketmate/Screens/homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _navigatetohome();
    super.initState();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 2000), () {});

    Navigator.push(
        context, MaterialPageRoute(builder: (Context) => const HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      color: const Color.fromARGB(255, 244, 67, 54),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.local_grocery_store,
            size: 100,
            color: Colors.white,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Market Mate',
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
          )
        ],
      ),
    ));
  }
}
