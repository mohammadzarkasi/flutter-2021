import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  var pesan = 'Latihan Button';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('latihan button'),
        actions: [
          PopupMenuButton(
            onSelected: (args){},
            itemBuilder: (BuildContext ctx) {
              return [
                PopupMenuItem(child: Text('Menu 1')),
                PopupMenuItem(child: Text('Menu 2')),
                PopupMenuItem(child: Text('Menu 3')),
                PopupMenuItem(child: Text('Menu 4')),
                PopupMenuItem(child: Text('Menu 5')),
              ];
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10),
            Text(pesan),
            TextButton(
              onPressed: () {},
              child: Text('ini TextButton'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('ini ElevatedButton'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text('ini OutlinedButton'),
            ),
            DropdownButton(
              onChanged: (data) {},
              hint: Text('ini Dropdown'),
              items: [
                DropdownMenuItem(child: Text('Opsi 1'), value: 'opsi 1', onTap: () {}),
                DropdownMenuItem(child: Text('Opsi 2'), value: 'opsi 2', onTap: () {}),
                DropdownMenuItem(child: Text('Opsi 3'), value: 'opsi 3', onTap: () {}),
                DropdownMenuItem(child: Text('Opsi 4'), value: 'opsi 4', onTap: () {}),
                DropdownMenuItem(child: Text('Opsi 5'), value: 'opsi 5', onTap: () {}),
              ],
            ),
            ButtonBar(
              children: [
                ElevatedButton(onPressed: () {}, child: Text('Btn 1')),
                ElevatedButton(onPressed: () {}, child: Text('Btn 2')),
                ElevatedButton(onPressed: () {}, child: Text('Btn 3')),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
    );
  }
}
