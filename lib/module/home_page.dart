import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  String formatDate(DateTime date) {
    final DateFormat formatter = DateFormat('EEEE d MMMM y');
    return formatter.format(date);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        elevation: 0,
        title: Center(
          child: Column(
            children: [
              Text(
                "Today",
                style: GoogleFonts.ubuntu(
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
              Text(
                formatDate(DateTime.now()),
                style: GoogleFonts.ubuntu(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),

      body: SizedBox.expand(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              child: Card(
                margin:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Lottie.asset(
                        'assets/loc.json',
                        height: 90,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: "text",
                          style: GoogleFonts.ubuntu(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: "subText",
                              style: GoogleFonts.ubuntu(
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
