import 'package:flutter/material.dart';
import 'package:klinik_app/model/Poli.dart';
import 'package:klinik_app/ui/poli/poli_detail.dart';

class PoliUpdate extends StatefulWidget {
  final Poli poli;

  const PoliUpdate({super.key, required this.poli});

  @override
  State<PoliUpdate> createState() => _PoliUpdateState();
}

class _PoliUpdateState extends State<PoliUpdate> {
  final _formKey = GlobalKey<FormState>();
  final _namaPoliCtrl = TextEditingController();

  @override
  void initState() {
    super.setState(() {
      _namaPoliCtrl.text = widget.poli.namaPoli;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Form Ubah Poli",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Form(
            key: _formKey,
            child: Container(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Column(
                children: [_fieldNamaPoli(), _tombolSimpan()],
              ),
            )),
      ),
    );
  }

  _fieldNamaPoli() {
    return TextField(
      decoration: InputDecoration(labelText: "Nama Poli"),
      controller: _namaPoliCtrl,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          Poli poli = Poli(namaPoli: _namaPoliCtrl.text);
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PoliDetail(data: poli),
              ));
        },
        child: const Text("Simpan"));
  }
}
