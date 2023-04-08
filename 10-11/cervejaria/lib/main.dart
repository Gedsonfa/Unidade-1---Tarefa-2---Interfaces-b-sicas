import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cervejas',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Cervejas'),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: DataTable(
            columns: [
              DataColumn(label: Text('Nome')),
              DataColumn(label: Text('Estilo')),
              DataColumn(label: Text('IBU')),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('La Fin Du Monde')),
                DataCell(Text('Bock')),
                DataCell(Text('65')),
              ]),
              DataRow(cells: [
                DataCell(Text('Sapporo Premium')),
                DataCell(Text('Sour Ale')),
                DataCell(Text('54')),
              ]),
              DataRow(cells: [
                DataCell(Text('Erdinger Weissbier')),
                DataCell(Text('Hefeweizen')),
                DataCell(Text('16')),
              ]),
              DataRow(cells: [
                DataCell(Text('Corona Extra')),
                DataCell(Text('Pale Lager')),
                DataCell(Text('18')),
              ]),
              DataRow(cells: [
                DataCell(Text('Chimay Blue')),
                DataCell(Text('Belgian Strong Ale')),
                DataCell(Text('75')),
              ]),
              DataRow(cells: [
                DataCell(Text('Stella Artois')),
                DataCell(Text('Belgian Pilsner')),
                DataCell(Text('30')),
              ]),
              DataRow(cells: [
                DataCell(Text('Guinness Draught')),
                DataCell(Text('Stout')),
                DataCell(Text('45')),
              ]),
              DataRow(cells: [
                DataCell(Text('Duvel')),
                DataCell(Text('Pilsner')),
                DataCell(Text('82')),
              ]),
              DataRow(cells: [
                DataCell(Text('Goose Island IPA')),
                DataCell(Text('IPA')),
                DataCell(Text('55')),
              ]),
              DataRow(cells: [
                DataCell(Text('Stella Artois')),
                DataCell(Text('Belgian Pilsner')),
                DataCell(Text('30')),
              ]),
              DataRow(cells: [
                DataCell(Text('Guinness Draught')),
                DataCell(Text('Stout')),
                DataCell(Text('45')),
              ]),
              DataRow(cells: [
                DataCell(Text('Stella Artois')),
                DataCell(Text('Belgian Pilsner')),
                DataCell(Text('30')),
              ]),
              DataRow(cells: [
                DataCell(Text('Guinness Draught')),
                DataCell(Text('Stout')),
                DataCell(Text('45')),
              ]),
              
            ],
          ),
        ),
      ),
    )
   );
  }
}
