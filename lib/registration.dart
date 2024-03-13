import 'package:flutter/material.dart';
class Regist extends StatefulWidget {
  const Regist({super.key});

  @override
  State<Regist> createState() => _RegistState();
}

class _RegistState extends State<Regist> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        appBar: AppBar(title:Text('Registration Page'),
  
        ),
        body:Column(
          children: [
            SizedBox(height: 50,),

            TextField(
              decoration: InputDecoration(
                  hintText: 'Enter your Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  )
              ),
            ),
            SizedBox(height: 10,),

            TextField(
              decoration: InputDecoration(
                  hintText: 'Enter Date of Birth',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  )
              ),
            ),

            SizedBox(height: 10,),

            TextField(
              decoration: InputDecoration(
                  hintText: 'Enter your Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  )
              ),
            ),

            SizedBox(height: 10,),

            TextField(
              decoration: InputDecoration(
                  hintText: 'Enter your Password',
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
                child: Center(child: Text('Register',style: TextStyle(
                  color: Colors.indigo,fontSize: 20,
                ),),

                ),
              ),
            ),


          ],
        )
      ),
    );
  }
}
