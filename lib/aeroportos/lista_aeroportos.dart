import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infra_emirates/Voos/lista_voos.dart';
import 'package:infra_emirates/config/app_text_styles.dart';
import 'package:infra_emirates/model/aeroporto.dart';
import 'package:infra_emirates/model/companhia.dart';
import 'package:infra_emirates/model/gerenciaCompanhiasAereas.dart';
import 'package:infra_emirates/model/infraero.dart';
import 'package:infra_emirates/model/voo.dart';

class ListaAeroportos extends StatelessWidget{

  Infraero infra = Infraero();
  void carregaAeroportos(){
 //  CRIANDO COMPANHIAS AÉREAS
    Companhia? comp1 = Companhia.with_parameters("Fly Emirates", 09786);
    Companhia? comp2 = Companhia.with_parameters("GOL", 08769);
// INSERINDO COMPANHIAS AÉREAS
    GerenciaCompanhiasAereas? gerencia = GerenciaCompanhiasAereas();
    gerencia.insereCompanhia(comp1);
    gerencia.insereCompanhia(comp2);
    //CRIANDO VOOS
    Voo voo1 = Voo.with_parameters( "10-05-2022", "15:30", 56543, "Salvador", "Sul");
    voo1.setCompanhia(comp1);

    Voo voo2 = Voo.with_parameters( "20-07-2021", "19:30", 43555, "Rio de Janeiro", "Noroeste");
    voo2.setCompanhia(comp2);

    Voo voo3 = Voo.with_parameters( "10-05-2022", "14:45", 56544, "Florianópolis", "Norte");
    voo3.setCompanhia(comp1);

    Voo voo4 = Voo.with_parameters( "26-05-2023", "5:30", 13575, "Brasília", "Noroeste");
    voo4.setCompanhia(comp2);

    Voo voo5 = Voo.with_parameters( "11-05-2022", "3:45", 12345, "Palmas", "Sul");
    voo5.setCompanhia(comp1);

    Voo voo6 = Voo.with_parameters( "25-08-2021", "17:50", 54653, "Manaus", "Noroeste");
    voo6.setCompanhia(comp2);

    Voo voo7 = Voo.with_parameters( "26-05-2023", "5:30", 13675, "Brasília", "Noroeste");
    voo7.setCompanhia(comp2);

    Voo voo8 = Voo.with_parameters( "11-05-2022", "3:45", 12945, "Palmas", "Sul");
    voo8.setCompanhia(comp1);

    Voo voo9 = Voo.with_parameters( "25-08-2021", "17:50", 54053, "Manaus", "Noroeste");
    voo9.setCompanhia(comp2);

    //CRIANDO AEROPORTOS
    Aeroporto aero1= Aeroporto.with_parameters("Congonhas", "1322112", "São Paulo", "São Paulo", "Brasil");
    aero1.insereVoo(voo1);
    aero1.insereVoo(voo2);
    aero1.insereVoo(voo3);
    Aeroporto aero2= Aeroporto.with_parameters("Santos-Dumont","5867348", "Rio de Janeiro","Rio de Janeiro","Brasil");
    aero2.insereVoo(voo4);
    aero2.insereVoo(voo5);
    aero2.insereVoo(voo6);
    Aeroporto aero3= Aeroporto.with_parameters("Lysias Rodrigues","3456345", "Palmas","Tocantins","Brasil");
    aero3.insereVoo(voo7);
    aero3.insereVoo(voo8);
    aero3.insereVoo(voo9);
    // Aeroporto aero4= Aeroporto.with_parameters("Hercílio Luz","1322112", "Florianópolis","Santa Catarina","Brasil");
    // aero2.insereVoo(voo4);
    // aero2.insereVoo(voo5);
    // aero2.insereVoo(voo6);






    infra.insereAeroporto(aero1);
    infra.insereAeroporto(aero2);
    infra.insereAeroporto(aero3);


  }

  @override
  Widget build(BuildContext context){
    carregaAeroportos();
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
                        Padding(padding: EdgeInsets.only(left: 100),
                            child:Text("Aeroportos", style: AppTextStyles.titleGolden,))
                        ,
                        Padding(padding: EdgeInsets.only(left: 30),
                            child:Image.asset("assets/images/aviao_logo_lista.png", width: 60, height: 60))],
                      mainAxisAlignment: MainAxisAlignment.center,)
                    ,

                  ],))),

        body: SafeArea(
            child: PageView(
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[

                Container(
                    decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
                    child:


                    ListView.builder(itemCount: infra.getAeroportos.length, itemBuilder: (context,index)
                    {
                      return ListTile(leading: Image.asset("assets/images/icone_aeroporto.png", width: 50, height: 50),title:Text(infra.getAeroportos[index].getNome, style: AppTextStyles.goldenList),
                          subtitle:Text(infra.getAeroportos[index].getCidade + "-" + infra.getAeroportos[index].getEstado),
                          onTap:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ListaVoos(aeroporto: infra.getAeroportos[index])));

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
