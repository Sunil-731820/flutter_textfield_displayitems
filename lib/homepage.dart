import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Textfield ",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Enter Anything Here"),
              maxLength: 100,
              minLines: 1,
              autocorrect: true,
              autofocus: true,
              cursorHeight: 20,
            ),
            TextButton(
                onPressed: () {},
                child: Text("Save data ",
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)))
          ],
        ),
      ),
    );
  }
}
