import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugas_2/ui/tampil_data.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  _FormDataState createState() => _FormDataState();
}

class _FormDataState extends State<FormData> {
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _tahunLahirController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Data"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            _textboxNama(),
            _textboxNim(),
            _textboxTahunLahir(),
            _tombolSimpan()
          ],
        ),
      ),
    );
  }

  _textboxNama() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama"),
      controller: _namaController,
    );
  }

  _textboxNim() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nim"),
      controller: _nimController,
    );
  }

  _textboxTahunLahir() {
    return TextField(
      decoration: const InputDecoration(labelText: "Tahun Lahir"),
      controller: _tahunLahirController,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          String Nama = _namaController.text;
          String Nim = _nimController.text;
          int TahunLahir = int.parse(_tahunLahirController.text);
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => TampilData(
                nama: Nama,
                nim: Nim,
                tahunLahir: TahunLahir,
              ),
            ),
          );
        },
        child: const Text('Simpan'));
  }
}
