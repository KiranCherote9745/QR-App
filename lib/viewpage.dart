import 'package:flutter/material.dart';

class Vpage extends StatelessWidget {
  const Vpage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text('Pofile Page'),
          centerTitle: true,
          leading: Icon(Icons.arrow_back),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),

            Container(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  "data:image/png;base64,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",
                ),
                radius: 80.0,
              ),
            ),
            SizedBox(
              height: 30,
            ),

            Text(
              'Flutter'.toUpperCase(),
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'SourceSansPro',
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Flutter Developer'.toUpperCase(),
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'SourceSansPro',
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(
              height: 30,
              width: 150,
              child: Divider(
                color: Colors.indigo,
              ),
            ),

            Container(
                child: ListTile(
              leading: Icon(
                Icons.phone,
                color: Colors.deepPurple,
              ),
              title: Text(
                '+91 859458343',
                style: TextStyle(color: Colors.black),
              ),
            )),

            SizedBox(
              height: 30,
              width: 150,
            ),

            Container(
                child: ListTile(
              leading: Icon(
                Icons.email,
                color: Colors.deepPurple,
              ),
              title: Text(
                'mailname@gmail.com',
                style: TextStyle(color: Colors.black),
              ),
            )),

            // TextField(
            //   decoration: InputDecoration(
            //     border: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(50.0),
            //     ),
            //     filled: true,
            //     hintStyle: TextStyle(color: Colors.grey[800]),
            //     hintText: "Email Address",
            //     fillColor: Color.fromARGB(179, 250, 46, 46),
            //   ),
            // ),
            //
            //
            // SizedBox(height: 30,),
            //
            // TextField(
            //   decoration: InputDecoration(
            //     border: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(50.0),
            //     ),
            //     filled: true,
            //     hintStyle: TextStyle(color: Colors.grey[800]),
            //     hintText: "Password",
            //     fillColor: Color.fromARGB(179, 255, 49, 49),
            //   ),
            // ),
            //
            //
            // SizedBox(height: 20,),
            //
            // GestureDetector(
            //   onTap: () {},
            //   child: Container(
            //     width: 200,
            //     height: 50,
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(50),
            //       color: Color.fromARGB(255, 255, 0, 0),
            //     ),
            //     child: Center(child: Text('Login',style:TextStyle(
            //       color: Colors.white,fontSize: 20,
            //     ))),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
