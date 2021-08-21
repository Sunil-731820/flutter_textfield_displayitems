import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController controller1 = TextEditingController();
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
              controller: controller1,
              decoration: InputDecoration(
                  labelText: "Enter Anything Here",
                  border: OutlineInputBorder()),
              maxLength: 100,
              minLines: 1,
              autocorrect: true,
              autofocus: true,
              cursorHeight: 20,
            ),
            TextButton(
                onPressed: () {
                  var name_entered = controller1.text;
                  //var date = DateTime.now();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              screenwelcome(items: name_entered)));

                  SizedBox(height: 10);
                },
                child: Text("Save data ",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellowAccent,
                        backgroundColor: Colors.redAccent)))
          ],
        ),
      ),
    );
  }
}

class screenwelcome extends StatelessWidget {
  //const screenwelcome({ Key? key }) : super(key: key);
  final items;
  var date = DateTime.now();
  screenwelcome({@required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Entered items or history"),
        ),
        body: ListView(
          children: [
            Text("$items , $date ",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Divider(),
          ],
        ));
  }
}
