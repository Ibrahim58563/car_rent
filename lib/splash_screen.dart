import 'package:car_rent/details_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2C2B34),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            children: [
              Transform.translate(
                offset: const Offset(-80, 0),
                child: Image.asset(
                  'assets/images/splash_image.png',
                  fit: BoxFit.cover,
                  height: 630,
                ),
              ),
              const Column(
                children: [
                  SizedBox(
                    height: 520,
                  ),
                  Text(
                    "Premium cars.\nEnjoy the luxury",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 36,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 14.0),
            child: Text(
              "Premium and prestige car daily rental. Experience the thrill at a lower price",
              style: TextStyle(
                color: Color(0xFF8E8E8E),
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DetailsScreen()));
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Center(
                  child: Text(
                    "Let's Go",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
