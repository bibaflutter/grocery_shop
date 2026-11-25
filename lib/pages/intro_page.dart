import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_shop/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //logo
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset('assets/images/avacado.png'),
            ),
        
            //we deliver grocieries at your doorstep
            Padding(
              padding: EdgeInsets.all(20),
              child: Center(
                child: Text(
                  'We deliver grocieries at your doorstep',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.notoSerif(
                    fontSize: 33.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            //fresh items everyday
            Text(
              'Fresh items everyday',
              style: GoogleFonts.notoSerif(
                fontSize: 19,
              ),
            ),
        
            SizedBox(height: 60),
        
            //get started button
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HomePage();
                    },
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.all(24),
                child: Center(child: Text('Get Started', style: TextStyle(color: Colors.white))),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
