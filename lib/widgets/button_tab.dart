import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class ButtonTab extends StatelessWidget{
  
  List<dynamic> lista=[];
  @override
  Widget build (BuildContext context){
    return FloatingActionButton(
      child: Icon(Icons.qr_code_scanner),
      onPressed: () async {
        dynamic barcodesScanRes = await FlutterBarcodeScanner.scanBarcode(
              '#A03131', 'Cancelar', false, ScanMode.QR);
        var url = Uri.parse(barcodesScanRes);
        final response = await http.get(url);
        final Map<String, dynamic> datos = convert.jsonDecode(response.body);
        String Users = '';
        for(var user in datos['data']){
          Users ='\nNombre :'+user['first_name']+' ';
          Users+=user['last_name']+' ';
          Users+='\nCorreo : '+user['email']+'';
          lista.add(Users);
        } 
    
        //Aqui valida si los datos que escanea la camara son de tipo String.
        //Si te da problemas el tipo de dato cambiaselo. Pero en principio si recibe un json no debería generar problemas
        if(barcodesScanRes is String)
          print('Los datos son : ${Users}');
          Navigator.of(context).pushNamed('/qrDataView',arguments:lista);
      });
  }
}