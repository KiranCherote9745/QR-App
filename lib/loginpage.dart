import 'package:flutter/material.dart';
import 'package:qrapp/main.dart';
import 'package:qrapp/registration.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        
        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height:20),

            Text('Login',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
            ),
            ),

            SizedBox(height:20),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter Username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                )
              ),
            ),

            SizedBox(height: 20,),

            TextField(
              decoration: InputDecoration(
                hintText: 'Enter Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  )
              ),
            ),
            
            SizedBox(height: 20,),
            
            GestureDetector(
            onTap: () {},
              child: Container(
             height: 50,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.yellow,
                ),
                child: Center(child: Text('Login',style: TextStyle(
                  color: Colors.indigo,fontSize: 30,
                ),),

                ),
              ),
            ),

            SizedBox(height: 20,),

            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Regist()
                    ));
              },
              child: Container(
                height: 50,
                width: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                ),
                child: Center(child: Text('New User Sign Up',style: TextStyle(
                  color: Colors.deepPurple,fontSize: 20,
                ),),

                ),
              ),
            ),


          ],
        ) ,
      ),

    );
  }
}