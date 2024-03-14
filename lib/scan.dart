import 'package:flutter/material.dart';
import 'package:qr/qr.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'camera.dart';
import 'viewpage.dart';


class scan extends StatefulWidget {
  const scan({super.key});

  @override
  State<scan> createState() => _scanState();
}

class _scanState extends State<scan> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

    home: Scaffold(

      backgroundColor:Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            SizedBox(height: 50,),
          Container(
            child: CircleAvatar(
              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGlL_ZvHaIQXSh0nM95WFDsM6BBbzMZQQJgg&usqp=CAU",),
              radius: 80.0,
            ),

          ),
            SizedBox(height: 20,),

            Container(
              child:QrImageView(
                data: '1234567890',
                version: QrVersions.auto,
                size: 200.0,
              ),
            ),

            SizedBox(height: 20,),

            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Cam()
                    ));
              },
              child: Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.yellow,
                ),
                child: Center(child: Text('Scan',style: TextStyle(
                  color: Colors.indigo,fontSize: 30,
                ),),

                ),
              ),
            ),

          ],
        ),
      ),
      ),

    );
  }
}


