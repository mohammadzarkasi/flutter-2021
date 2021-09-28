import 'package:app_studio/models/model_person.dart';
import 'package:flutter/material.dart';

class DetailScreen2 extends StatelessWidget {
  final ModelPerson person;

  DetailScreen2({
    required this.person,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Person')),
      body: Container(
        color: Colors.grey.shade500,
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 4),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Card(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Nama'),
                      Text(person.nama),
                      SizedBox(height: 20),
                      Text('NIK'),
                      Text(person.nik),
                      SizedBox(height: 20),
                      Text('Pekerjaan'),
                      Text(_getNamaPekerjaan(person.pekerjaan)),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Batal'),
                            style: ElevatedButton.styleFrom(primary: Colors.red),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(onPressed: () {}, child: Text('Simpan')),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
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
}
