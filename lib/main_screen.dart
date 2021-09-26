import 'package:app_studio/models/model_mahasiswa.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var _listMhs = [
    ModelMahasiswa(nama: 'Agus', nim: '1234567890', kelompok: '10'),
    ModelMahasiswa(nama: 'Budi', nim: '1234567891', kelompok: '11'),
    ModelMahasiswa(nama: 'Cahya', nim: '1234567892', kelompok: '12'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromRGBO(132, 129, 124, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView(
                children: _listMhs.map((mhs) {
                  return _buildItemMhs(mhs);
                }).toList(),
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.white,
              alignment: Alignment.center,
              child: Text('main_screen.dart'),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildItemMhs(ModelMahasiswa mhs) {
    return Card(
      child: Row(
        children: [
          SizedBox(width: 5),
          Container(
            height: 40,
            width: 40,
            color: Colors.yellow,
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(mhs.nama, style: TextStyle(fontWeight: FontWeight.bold)),
              Text('NIM: ${mhs.nim}', style: TextStyle(fontSize: 12)),
              Text('Kelompok: ${mhs.kelompok}', style: TextStyle(fontSize: 12)),
            ],
          ),
          Expanded(child: Container()),
          IconButton(
            onPressed: () {
              _keScreenDetail(mhs);
            },
            icon: Icon(Icons.edit),
          ),
          SizedBox(width: 5),
        ],
      ),
    );
  }

  void _keScreenDetail(ModelMahasiswa mhs) {}
}
