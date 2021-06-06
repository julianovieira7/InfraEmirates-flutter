import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infra_emirates/aeroportos/lista_aeroportos.dart';
import 'package:infra_emirates/config/app_text_styles.dart';

class HomeApp extends StatelessWidget{

  void vamosLa(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context) => ListaAeroportos()));
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color(0xFFBBB9B7)),
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(bottom: 50)),
            Text("Infra Emirates", style: AppTextStyles.title),
            Padding(padding: EdgeInsets.only(bottom: 10)),
            Center(child: Image.asset("assets/images/aviao_logo.png", width: 250, height: 250)),
            Padding(padding:  EdgeInsets.only(bottom: 250)),
            Row(children: <Widget> [
              ElevatedButton(
                  child: Text("Vamos lá!", style: AppTextStyles.button, ),
                  onPressed: () {
                    vamosLa(context);
                  },style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xFFBCA058)),
                padding:MaterialStateProperty.all( EdgeInsets.symmetric(horizontal: 60)),
              )),],
              mainAxisAlignment: MainAxisAlignment.center, ),
          ],

        ),
      )
    );








  }





}