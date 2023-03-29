import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:www/pages/login.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
    body: Stack(children: [
      Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image:DecorationImage(
            fit: BoxFit.cover,
          image: AssetImage(
            "assets/img-started.png"
          )
        )
        )
      ),
      Container(
        height: 444,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.0)
            ]
            )
        ),
      ),
      SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 64,
            ),
            Center(
              child: Text("Welcome To Doksli (Dokter Asli)",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 24,
                color: Color(0xffFFFFFF)
              )),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text("Five second until the enemy reach the battlefield. Smash them!!",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w300,
                color: Color(0xffFFFFFF),
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
              ),
            ),
            const Spacer(),
            GestureDetector(
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => LoginPage()
                  ),
                  );
                },
                child: Center(
                child: Container(
                  margin: EdgeInsets.only(bottom: 80),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 14
                    ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),),
                  child: Text("Get Started",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  )
                  ),
                ),
              ),
            ),
          ],
        ),
        ),
    ]),
    ); 
  }
}