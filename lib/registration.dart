import 'dart:convert';
import 'dart:js_interop';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

import 'loginpage.dart';

class Regist extends StatefulWidget {
  const Regist({super.key});

  @override
  State<Regist> createState() => _RegistState();
}

// text editing controller
class _RegistState extends State<Regist> {
  final namecontroller = TextEditingController();
  final rollnocontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final password = TextEditingController();

  bool loading = false;
  // registration function
  void register() async {
    print(namecontroller.text);
    print(rollnocontroller.text);
    print(emailcontroller.text);
    print(password.text);

    // api  converting url to uri
    Uri uri = Uri.parse('https://scnner-web.onrender.com/api/register'); // api url link in('')
    var response = await http.post(uri, // post method      // response is the var all the result is store here awiat is given to pause and only after this other operaton
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },

      body: jsonEncode(                         //   darcode jsonencode convert
          <String, String>{
        'name': namecontroller.text,
        'dob': rollnocontroller.text,
        'email': emailcontroller.text,
        'password': password.text,
      }),
    );
    print(response.statusCode);
    print(response.body);

    var data =jsonDecode(response.body);
    print(data["message"]);
    if (response.statusCode == 200) {              // if status code =200 navigate to the login page
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Login()),
      );
    } else {                                                  //   here this else part is to show other status code other than 200 is
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(data["message"]),
      )
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                controller: rollnocontroller,
                decoration: InputDecoration(
                    hintText: 'Enter rollno',
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
                controller: password,
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
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Login()));
                  register();
                },
                child: Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white70,
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
          )
    );
  }
}
