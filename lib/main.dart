import 'package:app_studio/detail_screen.dart';
import 'package:app_studio/main_screen.dart';
import 'package:app_studio/main_screen2.dart';
import 'package:app_studio/screen2.dart';
import 'package:flutter/material.dart';

void main() {
  print('program start here');
  var myApp = new MyApp2();
  runApp(myApp);
}

class MyApp2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      routes: {
        '/home'   : (BuildContext ctx) => MainScreen(),
        '/detail' : (BuildContext ctx) => DetailScreen(),
      },
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('rujak'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  print('text button di tap');
                },
                child: Text('ini text button'),
              ),
              ElevatedButton(
                onPressed: () {
                  print('ini elevated button');
                },
                // style: ElevatedButton.styleFrom(
                //   primary: Colors.yellow,
                // ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(Icons.save, size: 40, color: Color.fromRGBO(200, 200, 200, 1)),
                    Text('Simpan data'),
                  ],
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  print('outlined btn pressed');
                },
                child: Text('outlined button'),
              ),
              Container(
                color: Colors.grey,
                // margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                height: 400,
                width: double.infinity,
                alignment: Alignment.centerRight,
                child: Text('ini container'),
              ),
              Card(
                elevation: 10,
                shadowColor: Colors.yellow,
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.grey.shade400,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Shape of you'),
                          Text('ed sheeran'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(onPressed: (){}, child: Text('play')),
                              TextButton(onPressed: (){}, child: Text('add to queue')),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(30),
                color: Colors.grey.shade400,
                child: Image(
                  image: NetworkImage('https://upload.wikimedia.org/wikipedia/id/thumb/a/a8/Rujak_soto.jpg/800px-Rujak_soto.jpg'),
                ),
              ),
              Text(
                'Rujak Soto',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Image(
                image: AssetImage('assets/img/img1.jpeg'),
              ),
              Text('Jadwal sempro pertama'),
              Image(
                image: AssetImage('assets/img/img2.jpeg'),
              ),
              Text('Jadwal sempro kedua'),
            ],
          ),
        ),
      ),
    );
  }
}
