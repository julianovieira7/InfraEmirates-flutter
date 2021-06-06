import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infra_emirates/config/app_text_styles.dart';
import 'package:infra_emirates/model/aeroporto.dart';
import 'package:infra_emirates/model/voo.dart';

class DetalhesVoo extends StatelessWidget{
Voo voo = Voo();
  late final Aeroporto aeroporto;
  late final int numero;
  DetalhesVoo({ required this.numero ,  required this.aeroporto});

  void carregarDados() {
    voo = aeroporto.getVoosPorNumero(this.numero)!;
  }
  
  @override
  Widget build(BuildContext context) {
    carregarDados();
    // TODO: implement build
    return Scaffold(
        appBar:

        PreferredSize(

            preferredSize: Size.fromHeight(120),
            child: SafeArea(

                top: true,
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children:<Widget>[

                        Padding(padding: EdgeInsets.only(),
                            child:Image.asset("assets/images/aviao_logo_lista.png", width: 60, height: 60))],
                      mainAxisAlignment: MainAxisAlignment.end,)
                    ,
                    Row(
                      children:<Widget>[

                        Padding(padding: EdgeInsets.only(),
                            child:Text("Voo" + ":"+  voo.getNumeroVoo.toString(), style: AppTextStyles.titleGolden,))],
                      mainAxisAlignment: MainAxisAlignment.center,)

                  ],))),

        body: SafeArea(
            child: PageView(
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[

                Container(
                  decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children:<Widget> [
                          Padding(padding: EdgeInsets.only(top: 60),
                              child:Text("Destino" + ":"+  voo.getDestino, style: AppTextStyles.titleGolden,))

                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                      Row(
                        children:<Widget> [
                          Padding(padding: EdgeInsets.only(),
                              child:Text("Data" + ":"+  voo.getData, style: AppTextStyles.titleGolden,))

                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                      Row(
                        children:<Widget> [
                          Padding(padding: EdgeInsets.only(),
                              child:Text("Horário" + ":"+  voo.getHorario, style: AppTextStyles.titleGolden,))

                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                      Row(
                        children:<Widget> [
                          Padding(padding: EdgeInsets.only(),
                              child:Text("Companhia" + ":"+  voo.getCompanhia.toString(), style: AppTextStyles.titleGolden,))

                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      )



                    ],


                  ),

                ),

              ],

            )
        )
    );

  }
}