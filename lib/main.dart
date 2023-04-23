import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: const BackButton(),
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: CircleAvatar(
                    radius: 100,
                    foregroundImage: AssetImage("assets/images/profileImage.jpg"),
                  ),
                ),
                const Text("Nada Amr", style: TextStyle(fontSize: 30)),
                const Text("kokohend81@gmail.com", style: TextStyle(fontSize: 15, color: Colors.grey)),
                const Text("01062112449", style: TextStyle(fontSize: 15, color: Colors.grey)),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child:
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        TextField(decoration: InputDecoration(border: UnderlineInputBorder(), hintText: 'Enter your Name'),),
                        SizedBox(height: 20),
                        TextField(decoration: InputDecoration(border: UnderlineInputBorder(), hintText: 'Enter your Email'),),
                        SizedBox(height: 20),
                        TextField(decoration: InputDecoration(border: UnderlineInputBorder(), hintText: 'Enter your Phone Number'),),
                        SizedBox(height: 20),
                        TextField(decoration: InputDecoration(border: UnderlineInputBorder(), hintText: 'Enter your Address'),),
                        SizedBox(height: 20),
                      ]
                    ),
                ),
              ElevatedButton(onPressed: (){} , child: Text("Submit"), style: ElevatedButton.styleFrom(primary: Colors.black))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
