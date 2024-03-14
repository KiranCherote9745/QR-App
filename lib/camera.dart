import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qrregapp/camera.dart';
import 'package:qrregapp/main.dart';
import 'viewpage.dart';

class Cam extends StatefulWidget {
  const Cam({super.key});

  @override
  State<Cam> createState() => _CamState();
}

class _CamState extends State<Cam> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 300,),
              Container(
                height:300 ,
                width: 400,
                child: MobileScanner(
                  fit: BoxFit.contain ,
                  // fit: BoxFit.contain,
                  onDetect: (capture) {
                    final List<Barcode> barcodes = capture.barcodes;
                    final Uint8List? image = capture.image;
                    for (final barcode in barcodes) {
                      debugPrint('Barcode found! ${barcode.rawValue}');
                    }
                  },
                ),
              ),

              SizedBox(height: 300,),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          MyApp()
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
        )
      ),
    );
  }
}
