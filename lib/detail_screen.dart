import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  var selectedPekerjaan = -1;
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
                      Text('Agus'),
                      SizedBox(height: 20),
                      Text('NIK'),
                      Text('12345'),
                      SizedBox(height: 20),
                      Text('Pekerjaan'),
                      DropdownButton(
                        hint: Text('Pilih Pekerjaan'),
                        onChanged: (int? data) {
                          setState(() {
                            selectedPekerjaan = data ?? -1;
                          });
                        },
                        isExpanded: true,
                        value: selectedPekerjaan <= 1 ? null : selectedPekerjaan,
                        items: [
                          DropdownMenuItem(child: Text('Petani'), value: 1),
                          DropdownMenuItem(child: Text('Nelayan'), value: 2),
                          DropdownMenuItem(child: Text('Karyawan Swasta'), value: 3),
                          DropdownMenuItem(child: Text('Petani'), value: 4),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
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
}
