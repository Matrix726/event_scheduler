import 'package:flutter/material.dart';

import 'new_event.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  final List<Widget> _list = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo[200],
        appBar: AppBar(
          backgroundColor: Colors.indigo[600],
          title: const Text('Event Scheduler'),
        ),
        body: ListView.builder(
          itemCount: _list.length,
            itemBuilder: ((context, index) => _list[index])
        ),
        floatingActionButton: Builder(
          builder: (context) {
            return FloatingActionButton(
              onPressed: () async {
                String newText= await Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NewEventScreen()));
                setState(() {
                  _list.add(
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        // height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: kElevationToShadow[4],
                        ),
                        child:  Center(child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            newText,
                            style: const TextStyle(
                              fontSize: 17
                            ),
                          ),
                        )),
                      ),
                    ),
                  );
                });
              },
              backgroundColor: Colors.indigo[600],
              child: const Icon(Icons.add),
            );

          }
        ),
      ),
    );
  }
}
