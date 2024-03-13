import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';


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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget> [
          SizedBox(height: 500,),
        Container(
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGlL_ZvHaIQXSh0nM95WFDsM6BBbzMZQQJgg&usqp=CAU",),
            radius: 80.0,
          ),
        ),
          SizedBox(height: 20,),
          Container(
            child:QrImage(
              data: '1234567890',
              size: 200.0,
            ),
          ),

        ],
      ),
      ),

    );
  }
}


