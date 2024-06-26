import 'package:eduit/app/data/list_kamus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/kamus_keuangan_page_controller.dart';

class KamusKeuanganPageView extends GetView<KamusKeuanganPageController> {
  @override
  Widget build(BuildContext context) {
    var g = Get.arguments;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25, top: 10),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Kamus Keuangan.',
                      style: GoogleFonts.inter(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff034779)),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 250,
                      height: 45,
                      child: TextField(
                        textAlign: TextAlign.left,
                        controller: controller.cFind,
                        style: GoogleFonts.inter(
                            fontSize: 14, color: Colors.black),
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.search,
                            color: Color(0xff034779),
                          ),
                          hintText: 'Cari..',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide(
                              width: 1,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        onChanged: (value) {
                          controller.filterDic(value);
                          print(controller.foundDic.value.length);
                        },
                      ),
                    ),
                  ),
                  Obx(
                    () => controller.foundDic.value.isNotEmpty
                        ? Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 10),
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              physics: ScrollPhysics(),
                              itemCount: controller.foundDic.value.length,
                              itemBuilder: (context, index) {
                                final kamus = controller.kms[index];
                                if (controller.foundDic.value.isEmpty) {
                                  return Text(
                                    'Maaf pencarian tidak ditemukan',
                                    style: GoogleFonts.inter(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold),
                                  );
                                }
                                return Column(
                                  children: [
                                    Table(
                                      children: [
                                        TableRow(children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 8.0),
                                            child: Obx(() => Text(
                                                  "${controller.foundDic.value[index].kata}",
                                                  textAlign: TextAlign.justify,
                                                  style: GoogleFonts.inter(
                                                      fontSize: 15.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                          ),
                                          Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 8.0),
                                              child: Text(
                                                "${controller.foundDic.value[index].arti}",
                                                style: GoogleFonts.inter(
                                                  fontSize: 15.0,
                                                ),
                                              )),
                                        ]),
                                      ],
                                    ),
                                  ],
                                );
                              },
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 60.0, horizontal: 12),
                            child: Text(
                              'Kata Tidak Ditemukan',
                              style: GoogleFonts.inter(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                  ),
                  SizedBox(
                    height: 400,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
