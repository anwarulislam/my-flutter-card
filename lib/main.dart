import 'package:flutter/material.dart';
import 'package:tenms/constants.dart';
import 'package:wakelock/wakelock.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Wakelock.enable();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/images/anwar.jpg'),
              ),
              Text(
                'Anwarul Islam',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontFamily: 'Barlow',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'AWESOME DEVELOPER',
                style: TextStyle(
                  color: Colors.white70,
                  fontFamily: 'Barlow',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
                width: 200,
                child: Divider(
                  color: Colors.white38,
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.phone_outlined),
                  title: Text('+880 1819 400 400'),
                  subtitle: Text('Contact Number'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.email_outlined),
                  title: Text('anwaarulislaam@gmail.com'),
                  subtitle: Text('Email'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
