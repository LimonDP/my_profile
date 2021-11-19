import 'package:flutter/material.dart';
import 'package:my_profile/another.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void _anotheradd(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => AddAnother()));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Profile App"),
          centerTitle: true,
          backgroundColor: Colors.grey.shade800,
        ),
        backgroundColor: Colors.grey.shade600,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage('images/limon.jpg'),
                  radius: 70,
                  //foregroundImage: AssetImage('images/myimage.jpg'),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: const Text(
                    "Limon Chandra ray",
                    style: TextStyle(
                        fontFamily: 'Pacifico',
                        color: Colors.white,
                        fontSize: 30),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text("Flutter Developer",
                    style: TextStyle(color: Colors.white, fontSize: 30)),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: const Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.cyan,
                      ),
                      title: Text(
                        '01797856496',
                        style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            fontStyle: FontStyle.italic,
                            fontSize: 22,
                            color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: const Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.email_outlined,
                        color: Colors.cyan,
                      ),
                      title: Text(
                        'limonroy.19cse013@gmail.com',
                        style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            fontStyle: FontStyle.italic,
                            fontSize: 18,
                            color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      _anotheradd(context);
                    },
                    child: Icon(Icons.add))
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _anotheradd(context);
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
