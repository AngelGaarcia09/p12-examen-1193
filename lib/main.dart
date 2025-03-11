import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizScreen(),
    );
  }
}

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Quiz Map Garcia 1193')), // Centrar el título
        backgroundColor: Colors.blue,
        automaticallyImplyLeading:
            false, // Evita que el título se desplace con el botón de regreso
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Which Technology is Good?',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10), // Espacio mínimo entre el texto y los botones
            QuizButton(text: 'iOS'),
            QuizButton(text: 'Android'),
            QuizButton(text: 'Flutter'),
            QuizButton(text: 'React Native'),
          ],
        ),
      ),
    );
  }
}

class QuizButton extends StatelessWidget {
  final String text;
  QuizButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: 4.0), // Espacio mínimo entre botones
      child: SizedBox(
        width: double.infinity, // Todos los botones con el mismo ancho
        height: 50, // Todos los botones con la misma altura
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('You selected $text')),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Text(
            text,
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
