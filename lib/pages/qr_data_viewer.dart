import 'package:flutter/material.dart';

class QrDataViewer extends StatelessWidget{
  
  QrDataViewer({Key? key, required this.data}):super(key: key);

  //Aquí le cambias el tipo de dato que va a recibir del qr. No sé como lo vayas a manejar.

  final dynamic data;
  List<dynamic> lista=[];

  @override
  Widget build(BuildContext context) {
    for(var user in data){
       lista.add(user);
    }
    
    // Aqui implementas la vista que le vayas a dar a los datos que proceses. 
    //No la hago de una porque no sé que tipos de datos vayas a procesar ni como la vas a administrar.
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Viewer')
      ),
      body:Container(
          child: ListView.builder(
            itemCount: lista.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: new Text('${lista[index]}'),
                ),
              );
            },
          ),
        ),
    );
  }
}