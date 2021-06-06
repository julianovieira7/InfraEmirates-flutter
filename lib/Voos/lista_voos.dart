import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infra_emirates/Voos/detalhes_voo.dart';
import 'package:infra_emirates/config/app_text_styles.dart';
import 'package:infra_emirates/model/aeroporto.dart';

class ListaVoos extends StatelessWidget{
  late final Aeroporto aeroporto ;
  ListaVoos({required this.aeroporto});
    @override
  Widget build(BuildContext context) {
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
                            child:Text("Voos" + ":"+  aeroporto.getNome, style: AppTextStyles.titleGolden,))],
                      mainAxisAlignment: MainAxisAlignment.center,)

                  ],))),

        body: SafeArea(
            child: PageView(
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[

                Container(
                    decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
                    child:


                    ListView.builder(itemCount: aeroporto.getVoos.length, itemBuilder: (context,index)
                    {
                      return ListTile(leading: Image.asset("assets/images/icone_voo.png", width: 50, height: 50),title:Text( "("+ aeroporto.getVoos[index].getNumeroVoo.toString() + ")" + "Destino: " + aeroporto.getVoos[index].getDestino    , style: AppTextStyles.goldenList , ),
                          subtitle:Text( aeroporto.getVoos[index].getData +  "/" + aeroporto.getVoos[index].getHorario    ),
                          onTap:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => DetalhesVoo(numero: aeroporto.getVoos[index].getNumeroVoo,aeroporto: aeroporto ) ));

                          }
                      );
                    })

                ),

              ],

            )
        )
    );

  }
}