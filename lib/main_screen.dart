import 'package:app_studio/detail_screen.dart';
import 'package:app_studio/detail_screen2.dart';
import 'package:app_studio/models/model_person.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var _listPerson = [
    ModelPerson(nama: 'Agus', nik: '1234567890', pekerjaan: 1),
    ModelPerson(nama: 'Budi', nik: '1234567891', pekerjaan: 2),
    ModelPerson(nama: 'Cahya', nik: '1234567892', pekerjaan: 3),
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
          children: _listPerson.map((person) {
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
                      Text(person.nama, style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('NIM: ${person.nik}', style: TextStyle(fontSize: 12)),
                      Text('Pekerjaan: ${_getNamaPekerjaan(person.pekerjaan)}', style: TextStyle(fontSize: 12)),
                    ],
                  ),
                  Expanded(child: Container()),
                  IconButton(
                    onPressed: () async {
                      var result = await Navigator.of(context).pushNamed(
                        '/detail',
                        arguments: {
                          'person': person,
                        },
                      );

                      _handleNavResult(result, person);
                    },
                    icon: Icon(Icons.edit),
                  ),
                  SizedBox(width: 5),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  void _handleNavResult(Object? result, ModelPerson person) {
    if (result != null) {
      var resultMap = result as Map<String, Object>;
      if (resultMap.containsKey('pekerjaan')) {
        var pekerjaan = resultMap['pekerjaan'];
        if (pekerjaan is int) {
          int _pekerjaan = pekerjaan;
          var index = _listPerson.indexOf(person);
          if (index >= 0) {
            setState(() {
              _listPerson[index] = ModelPerson(
                nama: person.nama,
                nik: person.nik,
                pekerjaan: _pekerjaan,
              );
            });
          }
        }
      }
    }
  }

  String _getNamaPekerjaan(int id) {
    if (id == 1) {
      return 'Petani';
    }
    if (id == 2) {
      return 'Nelayan';
    }
    if (id == 3) {
      return 'Karyawan Swasta';
    }
    return 'Mahasiswa';
  }

  Widget _buildItemMhs(ModelPerson mhs) {
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
              Text('NIM: ${mhs.nik}', style: TextStyle(fontSize: 12)),
              Text('Kelompok: ${mhs.pekerjaan}', style: TextStyle(fontSize: 12)),
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

  void _keScreenDetail(ModelPerson mhs) {}
}
