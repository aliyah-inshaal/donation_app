import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

class FetchData extends StatelessWidget {
  FetchData({super.key});
  final ref = FirebaseDatabase.instance.ref("Requests");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data"),
      ),
      body: Column(children: [
        Expanded(
            child: FirebaseAnimatedList(
                query: ref,
                itemBuilder: (context, snapshot, animation, index) {
                  return Card(
                    color: Colors.redAccent,
                    child: ListTile(
                      title: Text(snapshot.child("Type").value.toString()),
                      subtitle:
                          Text(snapshot.child("Description").value.toString()),
                    ),
                  );
                }))
      ]),
    );
  }
}
