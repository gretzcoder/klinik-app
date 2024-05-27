import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:klinik_app/model/Poli.dart';
import 'package:klinik_app/ui/poli/poli_detail.dart';

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
          GestureDetector(
            child: const Card(
              child: ListTile(
                title: Text("Poli Anak"),
                leading: Icon(Icons.child_care),
              ),
            ),
            onTap: () {
              Poli poliAnak = Poli(id: "1", namaPoli: "Poli Anak");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PoliDetail(
                      data: poliAnak,
                    ),
                  ));
            },
          ),
          GestureDetector(
            child: const Card(
              child: ListTile(
                title: Text("Poli Kandungan"),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Poli Gigi"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Poli THT"),
            ),
          )
        ],
      ),
    );
  }
}
