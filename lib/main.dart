import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playNote(int noteNumber) {
    final player = AudioCache();
    player.play('notes/note$noteNumber.wav');
  }

  Expanded buildNote({int? noteNumber, Color? noteColor}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playNote(noteNumber!);
        },
        child: const Text(''),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(noteColor),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildNote(noteNumber: 1, noteColor: Colors.red),
              buildNote(noteNumber: 2, noteColor: Colors.orange),
              buildNote(noteNumber: 3, noteColor: Colors.yellow),
              buildNote(noteNumber: 4, noteColor: Colors.green),
              buildNote(noteNumber: 5, noteColor: Colors.teal),
              buildNote(noteNumber: 6, noteColor: Colors.blue),
              buildNote(noteNumber: 7, noteColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
