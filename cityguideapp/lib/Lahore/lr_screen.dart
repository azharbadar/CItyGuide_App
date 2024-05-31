import 'package:carousel_slider/carousel_slider.dart';
import 'package:cityguideapp/Controllers/IslamabadController/islamabadcontroller.dart';
import 'package:cityguideapp/Controllers/KarachiScreenController.dart/karachiController.dart';
import 'package:cityguideapp/Controllers/LahoreController.dart/lahorecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Lahore_Screen extends StatelessWidget {
  LahoreController lahoreController = Get.put(LahoreController());
  Lahore_Screen({super.key});
  List images = [
    "assets/lr_img1.jpg",
    "assets/lr_img2.jpg",
    "assets/lr_img3.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  // viewportFraction: 0.96,
                  // disableCenter: true,
                  autoPlay: true,
                  height: 150.0,
                  enlargeCenterPage: true,
                ),
                items: images
                    .map((item) => Container(
                          width: MediaQuery.of(context).size.width,
                          child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: Image(
                                image: AssetImage(item),
                                fit: BoxFit.fitWidth,
                                width: MediaQuery.of(context).size.width,
                              )),
                        ))
                    .toList(),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(100)),
                height: 434,
                child: GoogleMap(
                  initialCameraPosition: LahoreController.kGoogLePlex,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
