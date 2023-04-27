import 'package:flutter/material.dart';
import 'package:healz/screens/home_view.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      // Navigator.pushReplacementNamed(context, welcome.id);
      Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const Healz()),);

    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topCenter,
            end: AlignmentDirectional.bottomCenter,
            colors: [
              Color.fromRGBO(9, 9, 8, 1),
              Color.fromRGBO(14, 14, 13, 1),
              Color.fromRGBO(33, 32, 25, 1),
              Color.fromRGBO(53, 52, 38, 1),
            ],
          ),
        ),
        child: const Center(
          child: Image(
            image: AssetImage('assets/images/images.png'),
          ),
        ),
      ),
    );
  }
}
