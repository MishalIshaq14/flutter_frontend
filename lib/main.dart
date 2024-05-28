import 'package:flutter/material.dart';
import 'package:whatsapp/routes.dart';

void main() {
  runApp(const ListTilee());
}

class ListTilee extends StatefulWidget {
  const ListTilee({super.key});

  @override
  State<ListTilee> createState() => _ListTileeState();
}

class _ListTileeState extends State<ListTilee> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "whatsapp",
      theme: ThemeData(
          primarySwatch: Colors.cyan
      ),
      routes: routes,
    );
  }
}
