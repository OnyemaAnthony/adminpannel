import 'package:admin_panel/admin_panel.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Admin panel',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: AdminPanel(),
    );
  }
}
