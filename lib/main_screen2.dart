import 'package:app_studio/models/model_mahasiswa.dart';
import 'package:flutter/material.dart';

class MainScreen2 extends StatefulWidget {
  const MainScreen2({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen2> {
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
        child: ListView(
            children: [
              Container(
                height: 50,
                width: double.infinity,
                alignment: Alignment.center,
                color: Colors.yellow,
                child: Text('Container 2'),
              ),
              Container(
                height: 50,
                width: double.infinity,
                color: Colors.white,
                alignment: Alignment.center,
                child: Text('main_screen.dart'),
              ),
              for (var i = 0; i < 10; i++)
                Card(
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
                          Text('Agus', style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('NIM: 12345', style: TextStyle(fontSize: 12)),
                          Text('Kelompok: 10', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                      Expanded(child: Container()),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.edit),
                      ),
                      SizedBox(width: 5),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
