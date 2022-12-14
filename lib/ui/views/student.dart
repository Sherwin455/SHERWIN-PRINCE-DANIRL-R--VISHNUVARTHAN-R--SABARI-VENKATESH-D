import 'package:flutter/material.dart';
import 'package:devops_demo/database/dao/services.dart';
import 'package:devops_demo/resources/texts/strings.dart';
import 'package:devops_demo/ui/views/detail_page.dart';
import 'submit.dart';


class Student extends StatefulWidget {
  @override
  StudentState createState() => StudentState();
}
class StudentState extends State<Student> {
  get centerTitle => null;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        title: Text(
          'Student Details',
          style: TextStyle(color: Colors.grey), //<-- SEE HERE
        ),
      ),
      body : ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Student name',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Student ID',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Student College',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Student Course',
              ),
            ),
          ),
          Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: ElevatedButton(
                child: const Text('Submit'),
                style:ElevatedButton.styleFrom(
                  primary: Colors.green,
                  elevation:10,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => submit()));

                },
              )
          ),
        ],
      ),
    );
  }
}