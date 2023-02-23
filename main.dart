

import 'package:flutter/material.dart';
import 'package:page2/provider.dart';
import 'package:provider/provider.dart';
import 'Ranking.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget{
  const MyApp({Key? key}):super(key:key);
  Widget build(BuildContext context){
    return ChangeNotifierProvider(
      create: (BuildContext context) => provider(),
      builder: (context, child) => const MaterialApp(
        title:'Flutter Demo',
        home: MyHomePage(title:'K리그1 일정'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget{
  const MyHomePage({Key? key,required this.title}):super(key:key);
  final String title;
  State<MyHomePage> createState()=>_MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int counter = 0;
  int team1 = 0;
  int team2 = 0;
  int team3 = 0;
  int team4 = 0;
  int team5 = 0;
  int team6= 0;
  int team7 = 0;
  int team8 = 0;
  int team9 = 0;
  int team10 = 0;
  int team11 = 0;
  int team12= 0;
  int total = 0;

  int team111 = 0;
  int team21 = 0;




  void _incrementCounterteam1() {
    setState(() {

      context.read<provider>().listf[0]++;
      //context.read<provider>().gamepoint1();


      team1++;
      total++;
    });
  }
  void _incrementCounterteam2() {
    setState(() {
      context.read<provider>().listf[1]++;
      //context.read<provider>().gamepoint1();

      team2++;
      total++;

    });
  }
  void _incrementCounterteam3() {
    setState(() {
      context.read<provider>().listf[2]++;
      team3++;
      total++;

    });
  }
  void _incrementCounterteam4() {
    setState(() {
      context.read<provider>().listf[3]++;
      team4++;
      total++;
    });
  }
  void _incrementCounterteam5() {
    setState(() {
      context.read<provider>().listf[4]++;
      team5++;
      total++;
    });
  }
  void _incrementCounterteam6() {
    setState(() {
      context.read<provider>().listf[5]++;
      team6++;
      total++;
    });
  }
  void _incrementCounterteam7() {
    setState(() {
      context.read<provider>().listf[6]++;
      team7++;
      total++;
    });
  }
  void _incrementCounterteam8() {
    setState(() {
      context.read<provider>().listf[7]++;
      team8++;
      total++;
    });
  }
  void _incrementCounterteam9() {
    setState(() {
      context.read<provider>().listf[8]++;
      team9++;
      total++;
    });
  }
  void _incrementCounterteam10() {
    setState(() {
      context.read<provider>().listf[9]++;
      team10++;
      total++;
    });
  }
  void _incrementCounterteam11() {
   setState((){
     context.read<provider>().listf[10]++;
     team11++;
     total++;
    });
  }
  void _incrementCounterteam12() {
    setState(() {
      context.read<provider>().listf[11]++;
      team12++;
      total++;
    });
  }

  void _reset(){
    setState(() {
      counter = 0;
      team1 = 0;
      team2 = 0;
      team3 = 0;
      team4 = 0;
      team5 = 0;
      team6 = 0;
      team7 = 0;
      team8 = 0;
      team9 = 0;
      team10 = 0;
      team11 = 0;
      team12= 0;
      total = 0;
      context.read<provider>().listf[0]=0;
      context.read<provider>().listf[1]=0;
      context.read<provider>().listf[2]=0;
      context.read<provider>().listf[3]=0;
      context.read<provider>().listf[4]=0;
      context.read<provider>().listf[5]=0;
      context.read<provider>().listf[6]=0;
      context.read<provider>().listf[7]=0;
      context.read<provider>().listf[8]=0;
      context.read<provider>().listf[9]=0;
      context.read<provider>().listf[10]=0;


    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: SingleChildScrollView(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[

            Text('-Day1-',textAlign: TextAlign.start, style: TextStyle(fontSize:35)),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children : [
                ElevatedButton(onPressed: _incrementCounterteam1, child: const Text('Goal')),
                Text('울산',style: TextStyle(fontSize: 30),),
                Container(
                  margin: const EdgeInsets.only(bottom: 10.0),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(

                  ),
                  child: Image.asset(
                    'images/울산현대.png',
                    width: 80,
                  ),
                ),
                Text(
                  context.read<provider>().listf[0].toString(),

                  style: Theme.of(context).textTheme.headline4,
                ),

                Text(
                  context.read<provider>().listf[1].toString(),
                  style: Theme.of(context).textTheme.headline4,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10.0),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(

                  ),
                  child: Image.asset(
                    'images/전북.png',
                   width: 80,
                  ),
                ),
                Text('전북',style: TextStyle(fontSize: 30),),
                ElevatedButton(onPressed: _incrementCounterteam2, child: const Text('Goal')),

                ElevatedButton(onPressed: _incrementCounterteam3, child: const Text('Goal')),
                Text('수원',style:TextStyle(fontSize: 30),),
                Container(
                  margin: const EdgeInsets.only(bottom: 10.0),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(

                  ),
                  child: Image.asset(
                    'images/수원삼성.png',
                    width: 65,
                  ),
                ),
                Text(
                  context.read<provider>().listf[2].toString(),
                  style: Theme.of(context).textTheme.headline4,
                ),


              Text(
                context.read<provider>().listf[3].toString(),
                style: Theme.of(context).textTheme.headline4,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10.0),
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(

                ),
                child: Image.asset(
                  'images/김천.png',
                  width: 80,
                ),
              ),
              Text('김천',style: TextStyle(fontSize: 30),),
              ElevatedButton(onPressed: _incrementCounterteam4, child: const Text('Goal')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children : [
                ElevatedButton(onPressed: _incrementCounterteam5, child: const Text('Goal')),
                Text('서울',style:TextStyle(fontSize: 30),),
                Container(
                  margin: const EdgeInsets.only(bottom: 10.0),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(

                  ),
                  child: Image.asset(
                    'images/서울.png',
                    width: 70,
                  ),
                ),
                Text(
                    context.read<provider>().listf[4].toString(),
                  style: Theme.of(context).textTheme.headline4,
                ),

                Text(
                    context.read<provider>().listf[5].toString(),
                  style: Theme.of(context).textTheme.headline4,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10.0),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(

                  ),
                  child: Image.asset(
                    'images/인천.png',
                    width: 70,
                  ),
                ),
                Text('인천',style: TextStyle(fontSize: 30),),
                ElevatedButton(onPressed: _incrementCounterteam6, child: const Text('Goal')),

                ElevatedButton(onPressed: _incrementCounterteam7, child: const Text('Goal')),
                Text('포항',style: TextStyle(fontSize: 30),),
                Container(
                  margin: const EdgeInsets.only(bottom: 10.0),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(

                  ),
                  child: Image.asset(
                    'images/포항.png',
                    width: 80,
                  ),
                ),
                Text(

                    context.read<provider>().listf[6].toString(),
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  context.read<provider>().listf[7].toString(),
                  style: Theme.of(context).textTheme.headline4,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10.0),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(

                  ),
                  child: Image.asset(
                    'images/대구.png',
                    width: 80,
                  ),
                ),
                Text('대구',style: TextStyle(fontSize: 30),),
                ElevatedButton(onPressed: _incrementCounterteam8, child: const Text('Goal'),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children : [
                ElevatedButton(onPressed: _incrementCounterteam9, child: const Text('Goal')),
                Text('제주',style: TextStyle(fontSize: 30),),
                Container(
                  margin: const EdgeInsets.only(bottom: 10.0),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(

                  ),
                  child: Image.asset(
                    'images/제주.png',
                    width: 70,
                  ),
                ),
                Text(

                  context.read<provider>().listf[8].toString(),
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  context.read<provider>().listf[9].toString(),
                  style: Theme.of(context).textTheme.headline4,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10.0),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(

                  ),
                  child: Image.asset(
                    'images/수원fc.png',
                    width: 85,
                  ),
                ),
                Text('수원fc',style: TextStyle(fontSize: 30),),
                ElevatedButton(onPressed: _incrementCounterteam10, child: const Text('Goal'),),

                ElevatedButton(onPressed: _incrementCounterteam11, child: const Text('Goal')),
                Text('성남',style: TextStyle(fontSize: 30),),
                Container(
                  margin: const EdgeInsets.only(bottom: 10.0),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(

                  ),
                  child: Image.asset(
                    'images/성남.png',
                    width: 80,
                  ),
                ),
                Text(

                  context.read<provider>().listf[10].toString(),
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                  context.read<provider>().listf[11].toString(),
                  style: Theme.of(context).textTheme.headline4,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10.0),
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(

                  ),
                  child: Image.asset(
                    'images/강원.png',
                    width: 80,
                  ),
                ),
                Text('강원',style: TextStyle(fontSize: 30),),
                ElevatedButton(onPressed: _incrementCounterteam12, child: const Text('Goal'),),


              ],
            ),
            // Text('-Day2-',textAlign: TextAlign.start, style: TextStyle(fontSize:35)),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children : [
            //     ElevatedButton(onPressed: _incrementCounterteam111, child: const Text('Goal')),
            //     Text('울산',style: TextStyle(fontSize: 30),),
            //     Container(
            //       margin: const EdgeInsets.only(bottom: 10.0),
            //       padding: const EdgeInsets.all(8.0),
            //       decoration: BoxDecoration(
            //
            //       ),
            //       child: Image.asset(
            //         'images/울산현대.png',
            //         width: 80,
            //       ),
            //     ),
            //     Text(
            //       context.read<provider>().listf1[0].toString(),
            //
            //       style: Theme.of(context).textTheme.headline4,
            //     ),
            //
            //     Text(
            //       context.read<provider>().listf1[11].toString(),
            //       style: Theme.of(context).textTheme.headline4,
            //     ),
            //     Container(
            //       margin: const EdgeInsets.only(bottom: 10.0),
            //       padding: const EdgeInsets.all(8.0),
            //       decoration: BoxDecoration(
            //
            //       ),
            //       child: Image.asset(
            //         'images/강원.png',
            //         width: 80,
            //       ),
            //     ),
            //     Text('강원',style: TextStyle(fontSize: 30),),
            //     ElevatedButton(onPressed: _incrementCounterteam123, child: const Text('Goal'),),
            //
            //
            //     ElevatedButton(onPressed: _incrementCounterteam3, child: const Text('Goal')),
            //     Text('수원',style:TextStyle(fontSize: 30),),
            //     Container(
            //       margin: const EdgeInsets.only(bottom: 10.0),
            //       padding: const EdgeInsets.all(8.0),
            //       decoration: BoxDecoration(
            //
            //       ),
            //       child: Image.asset(
            //         'images/수원삼성.png',
            //         width: 65,
            //       ),
            //     ),
            //     Text(
            //       context.read<provider>().listf[2].toString(),
            //       style: Theme.of(context).textTheme.headline4,
            //     ),
            //
            //
            //     Text(
            //       context.read<provider>().listf[1].toString(),
            //       style: Theme.of(context).textTheme.headline4,
            //     ),
            //     Container(
            //       margin: const EdgeInsets.only(bottom: 10.0),
            //       padding: const EdgeInsets.all(8.0),
            //       decoration: BoxDecoration(
            //
            //       ),
            //       child: Image.asset(
            //         'images/전북.png',
            //         width: 80,
            //       ),
            //     ),
            //     Text('전북',style: TextStyle(fontSize: 30),),
            //     ElevatedButton(onPressed: _incrementCounterteam2, child: const Text('Goal')),
            //
            //   ],
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children : [
            //     ElevatedButton(onPressed: _incrementCounterteam5, child: const Text('Goal')),
            //     Text('서울',style:TextStyle(fontSize: 30),),
            //     Container(
            //       margin: const EdgeInsets.only(bottom: 10.0),
            //       padding: const EdgeInsets.all(8.0),
            //       decoration: BoxDecoration(
            //
            //       ),
            //       child: Image.asset(
            //         'images/서울.png',
            //         width: 70,
            //       ),
            //     ),
            //     Text(
            //       context.read<provider>().listf[4].toString(),
            //       style: Theme.of(context).textTheme.headline4,
            //     ),
            //
            //     Text(
            //       context.read<provider>().listf[3].toString(),
            //       style: Theme.of(context).textTheme.headline4,
            //     ),
            //     Container(
            //       margin: const EdgeInsets.only(bottom: 10.0),
            //       padding: const EdgeInsets.all(8.0),
            //       decoration: BoxDecoration(
            //
            //       ),
            //       child: Image.asset(
            //         'images/김천.png',
            //         width: 80,
            //       ),
            //     ),
            //     Text('김천',style: TextStyle(fontSize: 30),),
            //     ElevatedButton(onPressed: _incrementCounterteam4, child: const Text('Goal')),
            //
            //
            //     ElevatedButton(onPressed: _incrementCounterteam9, child: const Text('Goal')),
            //     Text('제주',style: TextStyle(fontSize: 30),),
            //     Container(
            //       margin: const EdgeInsets.only(bottom: 10.0),
            //       padding: const EdgeInsets.all(8.0),
            //       decoration: BoxDecoration(
            //
            //       ),
            //       child: Image.asset(
            //         'images/제주.png',
            //         width: 70,
            //       ),
            //     ),
            //
            //     Text(
            //
            //       context.read<provider>().listf[8].toString(),
            //       style: Theme.of(context).textTheme.headline4,
            //     ),
            //     Text(
            //       context.read<provider>().listf[7].toString(),
            //       style: Theme.of(context).textTheme.headline4,
            //     ),
            //     Container(
            //       margin: const EdgeInsets.only(bottom: 10.0),
            //       padding: const EdgeInsets.all(8.0),
            //       decoration: BoxDecoration(
            //
            //       ),
            //       child: Image.asset(
            //         'images/대구.png',
            //         width: 80,
            //       ),
            //     ),
            //     Text('대구',style: TextStyle(fontSize: 30),),
            //     ElevatedButton(onPressed: _incrementCounterteam8, child: const Text('Goal'),),
            //   ],
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children : [
            //     ElevatedButton(onPressed: _incrementCounterteam7, child: const Text('Goal')),
            //     Text('포항',style: TextStyle(fontSize: 30),),
            //     Container(
            //       margin: const EdgeInsets.only(bottom: 10.0),
            //       padding: const EdgeInsets.all(8.0),
            //       decoration: BoxDecoration(
            //
            //       ),
            //       child: Image.asset(
            //         'images/포항.png',
            //         width: 80,
            //       ),
            //     ),
            //
            //     Text(
            //
            //       context.read<provider>().listf[6].toString(),
            //       style: Theme.of(context).textTheme.headline4,
            //     ),
            //     Text(
            //       context.read<provider>().listf[9].toString(),
            //       style: Theme.of(context).textTheme.headline4,
            //     ),
            //     Container(
            //       margin: const EdgeInsets.only(bottom: 10.0),
            //       padding: const EdgeInsets.all(8.0),
            //       decoration: BoxDecoration(
            //
            //       ),
            //       child: Image.asset(
            //         'images/수원fc.png',
            //         width: 85,
            //       ),
            //     ),
            //     Text('수원fc',style: TextStyle(fontSize: 30),),
            //     ElevatedButton(onPressed: _incrementCounterteam10, child: const Text('Goal'),),
            //
            //     ElevatedButton(onPressed: _incrementCounterteam11, child: const Text('Goal')),
            //     Text('성남',style: TextStyle(fontSize: 30),),
            //     Container(
            //       margin: const EdgeInsets.only(bottom: 10.0),
            //       padding: const EdgeInsets.all(8.0),
            //       decoration: BoxDecoration(
            //
            //       ),
            //       child: Image.asset(
            //         'images/성남.png',
            //         width: 80,
            //       ),
            //     ),
            //     Text(
            //
            //       context.read<provider>().listf[10].toString(),
            //       style: Theme.of(context).textTheme.headline4,
            //     ),
            //     Text(
            //       context.read<provider>().listf[5].toString(),
            //       style: Theme.of(context).textTheme.headline4,
            //     ),
            //     Container(
            //       margin: const EdgeInsets.only(bottom: 10.0),
            //       padding: const EdgeInsets.all(8.0),
            //       decoration: BoxDecoration(
            //
            //       ),
            //       child: Image.asset(
            //         'images/인천.png',
            //         width: 70,
            //       ),
            //     ),
            //     Text('인천',style: TextStyle(fontSize: 30),),
            //     ElevatedButton(onPressed: _incrementCounterteam6, child: const Text('Goal')),
            //
            //
            //
            //   ],
            // ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children : [
               ElevatedButton(onPressed: (){

                 context.read<provider>().gamecount();
                 context.read<provider>().gamepoint1();
                 context.read<provider>().gamepoint2();
                 context.read<provider>().gamepoint3();
                 context.read<provider>().gamepoint4();
                 context.read<provider>().gamepoint5();
                 context.read<provider>().gamepoint6();
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> Ranking()));
               },
                   style: ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 30,)), child: const Text('순위표에 반영'))
               ]
           ),


          ],

        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _reset,
        tooltip: 'reset',
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
