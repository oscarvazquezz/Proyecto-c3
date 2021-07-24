
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/button_tab.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Scanner App'),
      ),
      body: Container(
        child:Center(
          child: Text('Press the button to open the Camera and Scan a QR Code',textAlign: TextAlign.center,),
        ),
      ),
      
      floatingActionButton: ButtonTab(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}