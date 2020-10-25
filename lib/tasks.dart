import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTasks extends StatelessWidget {
  final String taskText;
  final String createdDate;

  const MyTasks({this.taskText, this.createdDate});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        child: Card(
          margin: EdgeInsets.all(8),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          //shadowColor: Colors.grey,
          elevation: 6,
          //color: Colors.teal,
          child: Center(
            child: ListTile(
                title: Text(
                  taskText,
                  style: GoogleFonts.alegreyaSansSc(color: Colors.white),
                ),
                subtitle: Text(
                  'Created: ' + createdDate,
                  style: GoogleFonts.alegreyaSansSc(color: Colors.white),
                )),
          ),
        ));
  }
}
