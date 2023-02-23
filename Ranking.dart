import 'package:flutter/material.dart';
import 'package:page2/provider.dart';
import 'package:provider/provider.dart';
import 'database.dart';
import 'ranking.dart';
class Ranking extends StatefulWidget {
  const Ranking({Key? key}) : super(key: key);

  @override
  State<Ranking> createState() => _RankingState();
}
//context.read<provider>().a.toString()
class _RankingState extends State<Ranking> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'demo',
        home: Scaffold(

            body: SingleChildScrollView(

            child: Column(
              children: [
                Container(
                    child:Row(
                      children: [Image.asset('images/k리그 로고.png',width: 80.0,),
                        Text('K리그1 순위',style:TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),)],)
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [ ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> database())); },
                      style: ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 30,)), child: Text('이동'),)]),
                Container(
                    child: Column(
                      children:[
                        Text('파이널 라운드 순위 그룹A',style: TextStyle(fontSize:25.0,fontWeight: FontWeight.bold),),

                        DataTable(columns: [
                          DataColumn(label: Text('순위',style: TextStyle(fontWeight: FontWeight.bold),),),
                          DataColumn(label: Text('팀')),
                          DataColumn(label: Text('경기수'), numeric: true),
                          DataColumn(label: Text('승점',style: TextStyle(fontWeight: FontWeight.bold),), numeric: true),
                          DataColumn(label: Text('승')),
                          DataColumn(label: Text('무')),
                          DataColumn(label: Text('패')),
                          DataColumn(label: Text('득점')),
                          DataColumn(label: Text('실점')),
                          DataColumn(label: Text('득실차')),
                        ], rows: [
                          DataRow(cells: [
                            DataCell(Text('  1',style: TextStyle(fontWeight: FontWeight.bold),)),
                            DataCell(
                              Row(
                                children: [Image.asset('images/울산현대.png',width: 19.0,),Text('울산'),],
                              ),),
                            DataCell(Text(context.read<provider>().a.toString())),
                            DataCell(Text(context.read<provider>().b1.toString(),style: TextStyle(fontWeight: FontWeight.bold),)),
                            DataCell(Text(context.read<provider>().c1.toString())),
                            DataCell(Text(context.read<provider>().d1.toString())),
                            DataCell(Text(context.read<provider>().e1.toString())),
                            DataCell(Text(context.read<provider>().f1.toString())),
                            DataCell(Text(context.read<provider>().g10.toString())),
                            DataCell(Text(context.read<provider>().h10.toString())),

                          ]),
                          DataRow(cells: [
                            DataCell(Text('  2',style: TextStyle(fontWeight: FontWeight.bold),)),
                            DataCell(Row(
                              children: [Image.asset('images/전북.png',width: 19.0,),Text('전북'),],
                            ),),
                            DataCell(Text(context.read<provider>().a.toString())),
                            DataCell(Text(context.read<provider>().b2.toString(),style: TextStyle(fontWeight: FontWeight.bold),)),
                            DataCell(Text(context.read<provider>().c2.toString())),
                            DataCell(Text(context.read<provider>().d2.toString())),
                            DataCell(Text(context.read<provider>().e2.toString())),
                            DataCell(Text(context.read<provider>().f2.toString())),
                            DataCell(Text(context.read<provider>().g20.toString())),
                            DataCell(Text(context.read<provider>().h20.toString())),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('  3',style: TextStyle(fontWeight: FontWeight.bold),)),
                            DataCell(Row(
                              children: [Image.asset('images/포항.png',width: 19.0,),Text('포항'),],
                            ),),
                            DataCell(Text(context.read<provider>().a.toString())),
                            DataCell(Text(context.read<provider>().b7.toString(),style: TextStyle(fontWeight: FontWeight.bold),)),
                            DataCell(Text(context.read<provider>().c7.toString())),
                            DataCell(Text(context.read<provider>().d7.toString())),
                            DataCell(Text(context.read<provider>().e7.toString())),
                            DataCell(Text(context.read<provider>().f7.toString())),
                            DataCell(Text(context.read<provider>().g70.toString())),
                            DataCell(Text(context.read<provider>().h70.toString())),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('  4',style: TextStyle(fontWeight: FontWeight.bold),)),
                            DataCell(Row(
                              children: [Image.asset('images/인천.png',width: 19.0,),Text('인천'),],
                            ),),
                            DataCell(Text(context.read<provider>().a.toString())),
                            DataCell(Text(context.read<provider>().b6.toString(),style: TextStyle(fontWeight: FontWeight.bold),)),
                            DataCell(Text(context.read<provider>().c6.toString())),
                            DataCell(Text(context.read<provider>().d6.toString())),
                            DataCell(Text(context.read<provider>().e6.toString())),
                            DataCell(Text(context.read<provider>().f6.toString())),
                            DataCell(Text(context.read<provider>().g60.toString())),
                            DataCell(Text(context.read<provider>().h60.toString())),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('  5',style: TextStyle(fontWeight: FontWeight.bold),)),
                            DataCell(Row(
                              children: [Image.asset('images/제주.png',width: 19.0,),Text('제주'),],
                            ),),
                            DataCell(Text(context.read<provider>().a.toString())),
                            DataCell(Text(context.read<provider>().b9.toString(),style: TextStyle(fontWeight: FontWeight.bold),)),
                            DataCell(Text(context.read<provider>().c9.toString())),
                            DataCell(Text(context.read<provider>().d9.toString())),
                            DataCell(Text(context.read<provider>().e9.toString())),
                            DataCell(Text(context.read<provider>().f9.toString())),
                            DataCell(Text(context.read<provider>().g90.toString())),
                            DataCell(Text(context.read<provider>().h90.toString())),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('  6',style: TextStyle(fontWeight: FontWeight.bold),)),
                            DataCell(Row(
                              children: [Image.asset('images/강원.png',width: 19.0,),Text('강원'),],
                            ),),
                            DataCell(Text(context.read<provider>().a.toString())),
                            DataCell(Text(context.read<provider>().b12.toString(),style: TextStyle(fontWeight: FontWeight.bold),)),
                            DataCell(Text(context.read<provider>().c12.toString())),
                            DataCell(Text(context.read<provider>().d12.toString())),
                            DataCell(Text(context.read<provider>().e12.toString())),
                            DataCell(Text(context.read<provider>().f12.toString())),
                            DataCell(Text(context.read<provider>().g1200.toString())),
                            DataCell(Text(context.read<provider>().h1200.toString())),
                          ]),


                        ]
                        ),
                        Text('파이널 라운드 순위 그룹B',style: TextStyle(fontSize:25.0,fontWeight: FontWeight.bold),),
                        DataTable(columns: [
                          DataColumn(label: Text('순위',style: TextStyle(fontWeight: FontWeight.bold),),),
                          DataColumn(label: Text('팀')),
                          DataColumn(label: Text('경기수'), numeric: true),
                          DataColumn(label: Text('승점',style: TextStyle(fontWeight: FontWeight.bold),), numeric: true),
                          DataColumn(label: Text('승')),
                          DataColumn(label: Text('무')),
                          DataColumn(label: Text('패')),
                          DataColumn(label: Text('득점')),
                          DataColumn(label: Text('실점')),
                          DataColumn(label: Text('득실차')),
                        ], rows: [
                          DataRow(cells: [
                            DataCell(Text('  7',style: TextStyle(fontWeight: FontWeight.bold),)),
                            DataCell(Row(
                              children: [Image.asset('images/수원fc.png',width: 19.0,),Text('수원fc'),],
                            ),),
                            DataCell(Text(context.read<provider>().a.toString())),
                            DataCell(Text(context.read<provider>().b10.toString(),style: TextStyle(fontWeight: FontWeight.bold),)),
                            DataCell(Text(context.read<provider>().c10.toString())),
                            DataCell(Text(context.read<provider>().d10.toString())),
                            DataCell(Text(context.read<provider>().e10.toString())),
                            DataCell(Text(context.read<provider>().f10.toString())),
                            DataCell(Text(context.read<provider>().g1000.toString())),
                            DataCell(Text(context.read<provider>().h1000.toString())),

                          ]),
                          DataRow(cells: [
                            DataCell(Text('  8',style: TextStyle(fontWeight: FontWeight.bold),)),
                            DataCell(Row(
                              children: [Image.asset('images/대구.png',width: 19.0,),Text('대구'),],
                            ),),
                            DataCell(Text(context.read<provider>().a.toString())),
                            DataCell(Text(context.read<provider>().b8.toString(),style: TextStyle(fontWeight: FontWeight.bold),)),
                            DataCell(Text(context.read<provider>().c8.toString())),
                            DataCell(Text(context.read<provider>().d8.toString())),
                            DataCell(Text(context.read<provider>().e8.toString())),
                            DataCell(Text(context.read<provider>().f8.toString())),
                            DataCell(Text(context.read<provider>().g80.toString())),
                            DataCell(Text(context.read<provider>().h80.toString())),
                          ]),
                          DataRow(cells: [
                            DataCell(Text('  9',style: TextStyle(fontWeight: FontWeight.bold),)),
                            DataCell(Row(
                              children: [Image.asset('images/서울.png',width: 19.0,),Text('서울'),],
                            ),),
                            DataCell(Text(context.read<provider>().a.toString())),
                            DataCell(Text(context.read<provider>().b5.toString(),style: TextStyle(fontWeight: FontWeight.bold),)),
                            DataCell(Text(context.read<provider>().c5.toString())),
                            DataCell(Text(context.read<provider>().d5.toString())),
                            DataCell(Text(context.read<provider>().e5.toString())),
                            DataCell(Text(context.read<provider>().f5.toString())),
                            DataCell(Text(context.read<provider>().g50.toString())),
                            DataCell(Text(context.read<provider>().h50.toString())),
                          ]),
                          DataRow(cells: [
                            DataCell(Text(' 10',style: TextStyle(fontWeight: FontWeight.bold),)),
                            DataCell(Row(
                              children: [Image.asset('images/수원삼성.png',width: 19.0,),Text('수원'),],
                            ),),
                            DataCell(Text(context.read<provider>().a.toString())),
                            DataCell(Text(context.read<provider>().b3.toString(),style: TextStyle(fontWeight: FontWeight.bold),)),
                            DataCell(Text(context.read<provider>().c3.toString())),
                            DataCell(Text(context.read<provider>().d3.toString())),
                            DataCell(Text(context.read<provider>().e3.toString())),
                            DataCell(Text(context.read<provider>().f3.toString())),
                            DataCell(Text(context.read<provider>().g30.toString())),
                            DataCell(Text(context.read<provider>().h30.toString())),
                          ]),
                          DataRow(cells: [
                            DataCell(Text(' 11',style: TextStyle(fontWeight: FontWeight.bold),)),
                            DataCell(Row(
                              children: [Image.asset('images/김천.png',width: 19.0,),Text('김천'),],
                            ),),
                            DataCell(Text(context.read<provider>().a.toString())),
                            DataCell(Text(context.read<provider>().b4.toString(),style: TextStyle(fontWeight: FontWeight.bold),)),
                            DataCell(Text(context.read<provider>().c4.toString())),
                            DataCell(Text(context.read<provider>().d4.toString())),
                            DataCell(Text(context.read<provider>().e4.toString())),
                            DataCell(Text(context.read<provider>().f4.toString())),
                            DataCell(Text(context.read<provider>().g40.toString())),
                            DataCell(Text(context.read<provider>().h40.toString())),
                          ]),
                          DataRow(cells: [
                            DataCell(Text(' 12',style: TextStyle(fontWeight: FontWeight.bold),)),
                            DataCell(Row(
                              children: [Image.asset('images/성남.png',width: 19.0,),Text('성남'),],
                            ),),
                            DataCell(Text(context.read<provider>().a.toString())),
                            DataCell(Text(context.read<provider>().b11.toString(),style: TextStyle(fontWeight: FontWeight.bold),)),
                            DataCell(Text(context.read<provider>().c11.toString())),
                            DataCell(Text(context.read<provider>().d11.toString())),
                            DataCell(Text(context.read<provider>().e11.toString())),
                            DataCell(Text(context.read<provider>().f11.toString())),
                            DataCell(Text(context.read<provider>().g1100.toString())),
                            DataCell(Text(context.read<provider>().h1100.toString())),
                          ]),


                        ]
                        ),



                      ],
                    )



                ),

              ],
            )
        )
        )
    );

  }


}
