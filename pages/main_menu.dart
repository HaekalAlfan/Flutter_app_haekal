import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget doctorCard(String img, String name, String role) {
      return Container(
        padding: const EdgeInsets.all(10),
        margin: EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17), color: Color(0xffFFFFFF)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 220,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(img)))),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name,
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: const Color(0xff0D2841),
                            fontWeight: FontWeight.w500,
                          )),
                      Text(role,
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: const Color(0xff0D2841),
                            fontWeight: FontWeight.w300,
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          width: 24,
                          height: 24,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/ic-star.png")))),
                    ],
                  ),
                ],
              ),
            ),
            Text(
              "4.8",
              textAlign: TextAlign.right,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w300,
                color: Color(0xff308CF8),
                fontSize: 16,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
        backgroundColor: const Color(0xffFAFAFA),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello, \nHaekalex69",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: const Color(0xff000000),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text("Stay Healthy with Our Spesialis Doctor",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                            color: const Color(0xff9698A9),
                          ))
                    ],
                  ),
                  Container(
                      width: 76,
                      height: 76,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/img-haekalex.png")))),
                ],
              ),
              doctorCard("assets/img-doc1.png", "dr. Mawar N.",
                  "Spesialis Penyakit Dalam"),
              doctorCard("assets/img-doc2.png", "dr.Zizah Ayuningsih",
                  "Spesialis Penyakit Kulit"),
            ]),
          ),
        )));
  }
}
