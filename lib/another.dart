import 'package:flutter/material.dart';

class AddAnother extends StatelessWidget {
  const AddAnother({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add To"),
      ),
      body: Column(
        children: [Text("Add Now")],
      ),
    );
  }
}
