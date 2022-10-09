import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/style.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home: _HomeScreen(),
    );
  }
}
class _HomeScreen extends StatefulWidget {
  const _HomeScreen({super.key});

  @override
  State<_HomeScreen> createState() => __HomeScreenState();
}

class __HomeScreenState extends State<_HomeScreen> {
  String data ="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: QrImage(
              data: data, 
              backgroundColor: Colors.white,
              version: QrVersions.auto,
              size: 300.0,
              ),
              
          ),
          SizedBox(
            height: 24,
            ),
            Container(
              width: 300.0,
              child: TextField(
                onChanged: (value){
                  setState(() {
                    data=value;
                  });
                },
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white
                ),
                decoration: InputDecoration(
                  hintText: "Type the Data",
                  filled: true,
                  fillColor: AppStyle.textInputColor,
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 24.0,
              ),
              RawMaterialButton(
                onPressed: () {},
                fillColor: AppStyle.accentColor,
                shape: StadiumBorder(),
                padding: EdgeInsets.symmetric(
                  horizontal: 36.0,
                  vertical: 16.0,
                  ),

                child: Text("Generate QR Code"),
                )
        ],
      ),
    );
  }
}