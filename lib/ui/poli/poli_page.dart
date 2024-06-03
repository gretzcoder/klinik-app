import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:klinik_app/model/Poli.dart';
import 'package:klinik_app/ui/poli/poli_detail.dart';
import 'package:klinik_app/ui/poli/poli_form.dart';
import 'package:klinik_app/ui/poli/poli_item.dart';

class PoliPage extends StatefulWidget {
  const PoliPage({super.key});

  @override
  State<PoliPage> createState() => _PoliPageState();
}

class _PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Data Poli",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView(
        children: [
          PoliItem(data: Poli(namaPoli: "M. Iqbal Alifudin")),
          PoliItem(data: Poli(namaPoli: "Poli Gigi")),
          PoliItem(data: Poli(namaPoli: "Poli Umum")),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PoliForm(),
              ));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
