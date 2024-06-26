import 'package:eduit/app/modules/kalkulator_duit/controllers/kalkulator_duit_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultKalkulatorView extends GetView<KalkulatorDuitController> {
  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 32.0, right: 32, top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200,
                  child: Image.asset(
                    'assets/images/kalkulator_result_img.png',
                    width: double.infinity,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xff5EE8D1),
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    width: 320,
                    height: 70,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Text(
                            'Berikut deskripsi dari hasil investasimu di ',
                            style: GoogleFonts.inter(
                                fontSize: 14, color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '${controller.onselectedValue} ',
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30.0,
                    left: 40,
                    right: 40,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Uang kamu saat ini',
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Rp. ${data[0]}',
                        style: GoogleFonts.inter(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Lama Investasi',
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        ' ${data[1]} Tahun',
                        style: GoogleFonts.inter(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Uang yang diinvestasikan pertahun',
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Rp. ${data[2]} ',
                        style: GoogleFonts.inter(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Imbal hasil investasimu',
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        ' ${controller.perkiraan.value} % pertahun',
                        style: GoogleFonts.inter(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Hasil investasi kamu',
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: Color(0xff034779)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Rp. ${controller.hasil}',
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            color: Color(0xff034779),
                            fontWeight: FontWeight.w800),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'perkiraan setelah dipotong pajak 9%',
                        style: GoogleFonts.inter(
                            fontSize: 12, color: Color(0xff989393)),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Disclaimer: Angka diatas merupakan ilustrasi. Tidak ada jaminan atas hasil investasi, perkiraan keuntungan bergantung pada kondisi pasar yang dapat berubah sewaktu-waktu. Pilihan investasi sepenuhnya ada pada pengguna, Eduit hanya memberikan edukasi dalam bentuk ilustrasi investasi.',
                    style: GoogleFonts.inter(
                        fontSize: 14, color: Color(0xff989393)),
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 200,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff5EE8D1),
                            shape: StadiumBorder()),
                        child: Text(
                          'Kembali',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.normal),
                        ),
                        onPressed: () async {
                          controller.initialInvestmentController.clear();
                          controller.investmentDurationController.clear();
                          controller.monthlyInvestmentController.clear();
                          controller.interestRate = 0;
                          controller.onselectedValue = ''.obs;
                          Get.back();
                        }),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
