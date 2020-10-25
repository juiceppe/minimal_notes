import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:minimal_note_app/tasks.dart';
import 'package:provider/provider.dart';
import 'appStateNotifier.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String taskText;
  String createdDate;
  List<String> tasksItem = [];

  Widget buildToDoList() {
    return ListView.builder(
      itemBuilder: (context, index) {
        if (index < tasksItem.length) {
          return Dismissible(
            onDismissed: (direction) {
              setState(() {
                tasksItem.removeAt(index);
              });
            },
            key: Key(tasksItem[index]),
            child: buildTask(taskText, createdDate),
          );
        }
      },
    );
  }

  // Build a single todo item
  Widget buildTask(String taskTex, String createdDate) {
    var now = new DateTime.now();
    var formatter = new DateFormat('dd-MM-yyyy');
    String formattedDate = formatter.format(now);
    return MyTasks(
      taskText: taskText,
      createdDate: formattedDate,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(Icons.brightness_6, color: Colors.white),
              onPressed: () {
                ThemeProvider themeSwap =
                    Provider.of<ThemeProvider>(context, listen: false);
                themeSwap.swapTheme();
              })
        ],
        title: Center(
            child: Text(
          "Minimal Notes",
          style: GoogleFonts.alegreyaSansSc(),
        )),
      ),
      //  backgroundColor: Colors.white,
      body: buildToDoList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title:
                      Text('Add widget', style: GoogleFonts.alegreyaSansSc()),
                  content: TextField(
                    onChanged: (value) {
                      //Todo: Add checks for null values
                      taskText = value;
                    },
                  ),
                  actions: [
                    FlatButton(
                      onPressed: () {
                        Navigator.pop(context);
                        addTask(taskText, createdDate);
                      },
                      child: Text(
                        'Add',
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                );
              });
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void addTask(String taskText, String createdDate) {
    setState(() {
      tasksItem.add(taskText);
    });
  }
}
