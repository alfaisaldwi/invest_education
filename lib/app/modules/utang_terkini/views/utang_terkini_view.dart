import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/utang_terkini_controller.dart';

class UtangTerkiniView extends GetView<UtangTerkiniController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Posisi Utang',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.inter(fontSize: 24, color: Colors.black),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Januari 2023',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.inter(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      'Seiring dengan pemulihan ekonomi domestik yang masih kuat dan peningkatan signifikan dari sisi pendapatan negara, realisasi pembiayaan utang tahun 2022 lebih rendah dari target awal.',
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.inter(fontSize: 14),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset('assets/images/utang_terkini1.png'),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset('assets/images/utang_terkini2.png'),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset('assets/images/utang_terkini3.png'),
                  Image.asset('assets/images/utang_terkini4.png'),
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset('assets/images/utang_terkini5.png'),
                  Image.asset('assets/images/utang_terkini6.png'),
                  SizedBox(
                    height: 70,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
