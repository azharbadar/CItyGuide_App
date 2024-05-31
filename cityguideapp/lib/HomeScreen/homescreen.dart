import 'package:cityguideapp/Islamabad/islamabad_screen.dart';
import 'package:cityguideapp/Karachi/kr_screen.dart';
import 'package:cityguideapp/Lahore/lr_screen.dart';
import 'package:cityguideapp/LoginScreen/loginscreen.dart';
import 'package:cityguideapp/Quetta/quetta_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Contries Location",
                  style: GoogleFonts.aclonica(fontSize: 22)),
              const SizedBox(
                height: 200,
              ),

              Container(
                  height: 48,
                  width: Get.width,
                  child: ElevatedButton(
                      onPressed: () {
                        Get.to(Karachi_Screen());
                      },
                      child: Text(
                        "Karachi",
                        style: GoogleFonts.aclonica(fontSize: 22),
                      ))),
              const SizedBox(
                height: 12,
              ),
              Container(
                  height: 48,
                  width: Get.width,
                  child: ElevatedButton(
                      onPressed: () {
                        Get.to(Lahore_Screen());
                      },
                      child: Text(
                        "Lahore",
                        style: GoogleFonts.aclonica(fontSize: 22),
                      ))),
              const SizedBox(
                height: 12,
              ),
              Container(
                  height: 48,
                  width: Get.width,
                  child: ElevatedButton(
                      onPressed: () {
                        Get.to(Quetta_Screen());
                      },
                      child: Text(
                        "Quetta",
                        style: GoogleFonts.aclonica(fontSize: 22),
                      ))),
              const SizedBox(
                height: 12,
              ),
              Container(
                  height: 48,
                  width: Get.width,
                  child: ElevatedButton(
                      onPressed: () {
                        Get.to(Islamabad_Screen());
                      },
                      child: Text(
                        "Islamabad",
                        style: GoogleFonts.aclonica(fontSize: 22),
                      ))),

              // CountryWidgets(city: "Lahore"),
              // SizedBox(
              //   height: 12,
              // ),
              // CountryWidgets(city: "Quetta"),
              // SizedBox(
              //   height: 12,
              // ),
              // CountryWidgets(city: "Islamabad"),
            ],
          ),
        ),
      ),
    );
  }

  Container CountryWidgets({city}) {
    return Container(
        height: 48,
        width: Get.width,
        child: ElevatedButton(
            onPressed: () {},
            child: Text(
              city,
              style: GoogleFonts.aclonica(fontSize: 22),
            )));
  }
}
