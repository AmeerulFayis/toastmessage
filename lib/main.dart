import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ShowToast(),
    );
  }
}

class ShowToast extends StatefulWidget {
  const ShowToast({super.key});

  @override
  State<ShowToast> createState() => _ShowToastState();
}

class _ShowToastState extends State<ShowToast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Toast Message"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        height: 150,
        alignment: Alignment.center,
        padding: EdgeInsets.all(20),
        child: ElevatedButton(
          onPressed: () {
            showToastMessage("ShowToast Message on Flutter");
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              elevation: 5,
              foregroundColor: Colors.white),
          child: Text("Show Toast Message"),
        ),
      ),
    );
  }
}

void showToastMessage(String message) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 5,
      textColor: Colors.white,
      backgroundColor: Colors.grey,
      fontSize: 18.0);
}
