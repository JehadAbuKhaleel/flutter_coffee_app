import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              height: size.height * .6,
              width: size.width,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/welcome.jpg"),
                      fit: BoxFit.contain)),
            ),
            Positioned(
                top: size.height * .55,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                          bottom: 20.0), // Adjust the margin as needed
                      child: Text(
                        "Coffee so good, \nyour taste buds\n will love it.",
                        style: GoogleFonts.alike(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          bottom: 30.0), // Adjust the margin as needed
                      child: Text(
                        "The best grain, the finest roast, \n the powerful flavor.",
                        style: GoogleFonts.abel(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 192, 189, 189),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 70,
                      width: size.width * .7,
                      child: ElevatedButton.icon(
                        icon: const Icon(
                          Icons.mail,
                          color: Colors.red,
                        ),
                        label: const Text('Continue with Gmail'),
                        onPressed: () => Navigator.pushNamed(context, "/Home"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                        ),
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
