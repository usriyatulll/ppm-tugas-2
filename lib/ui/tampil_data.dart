import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final String nim;
  final String nama;
  final int tahunLahir;
  const TampilData(
      {Key? key,
      required this.nama,
      required this.nim,
      required this.tahunLahir})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perkenalan"),
      ),
      body: Container(
          margin: EdgeInsets.all(10),
          child: Center(
            child: ListView(
              children: [
                Text("Hai, nama saya $nama."),
                Text("NIM Saya adalah $nim."),
                Text(
                  "Saya berumur ${(DateTime.now().year - tahunLahir).toString()} tahun.",
                ),
              ],
            ),
          )),
    );
  }
}
