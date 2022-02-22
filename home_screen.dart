import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final String username;

  HomeScreen(this.username);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final items = ['BCT', 'BCE', 'BEX'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 300,
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.black, width: 4),
          ),
          child: DropdownButton<String>(
            value: value,
            iconSize: 36,
            icon:
                const Icon(Icons.arrow_drop_down_rounded, color: Colors.black),
            isExpanded: true,
            items: items.map(buildMenuItem).toList(),
            onChanged: (value) => setState(() => this.value = value),
          ),
        ),
      ),
    );

    DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
          value: item,
          child: Text(
            item,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        );
  }
}
