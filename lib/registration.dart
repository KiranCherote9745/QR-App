import 'dart:convert';
import 'dart:js_interop';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

class Regist extends StatefulWidget {
  const Regist({super.key});

  @override
  State<Regist> createState() => _RegistState();
}
// text editing controller
class _RegistState extends State<Regist> {
  final namecontroller = TextEditingController();
  final dateofbirthcontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final password = TextEditingController();

  bool loading = false;


  void register() async{
    print(namecontroller.text);
    print(dateofbirthcontroller.text);
    print(emailcontroller.text);
    print(password.text);
    
    Uri uri = Uri.parse('https://scnner-web.onrender.com/api/register');

    var response = await http.post(uri,
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(
    <String, String>{
    'name':namecontroller.text,
    'dob':dateofbirthcontroller.text,
    'email':emailcontroller.text,
    'password':password.text,
    }),
    );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        backgroundColor: Colors.indigo,
          appBar: AppBar(
            title: Text('Registration Page'),
            backgroundColor: Colors.indigoAccent,
          ),
          body: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              TextField(

                controller: namecontroller,
                decoration: InputDecoration(
                    hintText: 'Enter your Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: dateofbirthcontroller,
                decoration: InputDecoration(
                    hintText: 'Enter Date of Birth',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: emailcontroller,
                decoration: InputDecoration(
                    hintText: 'Enter your Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: password ,
                decoration: InputDecoration(
                    hintText: 'Enter your Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                 register();
                },
                child: Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.yellow,
                  ),
                  child: Center(
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
