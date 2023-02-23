import 'package:flutter/material.dart';
import 'package:page2/provider.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

//const localhost = "http://192.168.56.1:8080";
const host = "http://115.85.183.243:8080";
class TeamData {
  final String name;
  final int ranking;
  final int win;
  final int loss;
  TeamData({
    required this.name,
    required this.ranking,
    required this.win,
    required this.loss,
  });
}

class WeatherDataList {
  final List<TeamData> weatherData;

  WeatherDataList({
    required this.weatherData,
  });


}

class database extends StatefulWidget {
  const database({Key? key}) : super(key: key);

  @override
  State<database> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<database> {
  Future<List<TeamData>>? weatherData;



  @override
  initState() {
    super.initState();
    weatherData = _determineWeather();
  }

  Future<List<TeamData>> _determineWeather() async {
    http.Response response = await http.get(Uri.parse(
        '$host/user/'));
    List<dynamic> fromJson;
    fromJson = jsonDecode(utf8.decode(response.bodyBytes));

    List<TeamData> teams = [];

    for(int i = 0; i < fromJson.length; i++) {

      print(fromJson[i]);
      teams.add(TeamData(
          name: fromJson[i]['teamname'],
          ranking: fromJson[i]['ranking'],
          win: fromJson[i]['win'],
          loss: fromJson[i]['loss']));
    }
    return teams;
  }

  Future<http.Response> _putRequest(String name, int ranking, int win, int loss,
      int draw, int countpoint, int gamenumber, int diff, int point){
    return http.put(
      Uri.parse('$host/update/$name'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'countpoint' : countpoint.toString(),
        'gamenumber' : gamenumber.toString(),
        'differenceingain' : diff.toString(),
        'win' : win.toString(),
        'loss' : loss.toString(),
        'draw' : draw.toString(),
        'ranking' : ranking.toString(),
        'point' : point.toString()
      }),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: FutureBuilder(
            future: _determineWeather(),  // 리턴값이 생길때 까지 기다림.
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${snapshot.data![0].ranking}위 ${snapshot.data![0].name} , ${snapshot.data![0].win}승 , ${snapshot.data![0].loss}패',
                      style: const TextStyle(fontSize: 15),
                    ),
                    Text(
                      '${snapshot.data![1].ranking}위 ${snapshot.data![1].name} , ${snapshot.data![1].win}승 , ${snapshot.data![1].loss}패',
                      style: const TextStyle(fontSize: 15),
                    ),
                    Text(
                      '${snapshot.data![2].ranking}위 ${snapshot.data![2].name} , ${snapshot.data![2].win}승 , ${snapshot.data![2].loss}패',
                      style: const TextStyle(fontSize: 15),
                    ),Text(
                      '${snapshot.data![3].ranking}위 ${snapshot.data![3].name} , ${snapshot.data![3].win}승 , ${snapshot.data![3].loss}패',
                      style: const TextStyle(fontSize: 15),
                    ),
                    Text(
                      '${snapshot.data![4].ranking}위 ${snapshot.data![4].name} , ${snapshot.data![4].win}승 , ${snapshot.data![4].loss}패',
                      style: const TextStyle(fontSize: 15),
                    ),
                    Text(
                      '${snapshot.data![5].ranking}위 ${snapshot.data![5].name} , ${snapshot.data![5].win}승 , ${snapshot.data![5].loss}패',
                      style: const TextStyle(fontSize: 15),
                    ),
                    Text(
                      '${snapshot.data![6].ranking}위 ${snapshot.data![6].name} , ${snapshot.data![6].win}승 , ${snapshot.data![6].loss}패',
                      style: const TextStyle(fontSize: 15),
                    ),
                    FloatingActionButton(onPressed: (){
                      setState(() {
                        _determineWeather();
                      });
                    }),
                    FloatingActionButton(onPressed: (){
                      setState(() {
                      });
                    }),
                  ],
                );
              } else {
                return FloatingActionButton(onPressed: (){
                  setState(() {
                    _putRequest('울산',1,context.read<provider>().c1.toInt(),
                        context.read<provider>().e1.toInt(),
                        context.read<provider>().d1.toInt(),
                        context.read<provider>().f1.toInt(),
                        context.read<provider>().a.toInt(),
                        context.read<provider>().h10.toInt(),
                        context.read<provider>().b1.toInt());
                    _putRequest('전북',2,context.read<provider>().c2.toInt(),
                        context.read<provider>().e2.toInt(),
                        context.read<provider>().d2.toInt(),
                        context.read<provider>().f2.toInt(),
                        context.read<provider>().a.toInt(),
                        context.read<provider>().h20.toInt(),
                        context.read<provider>().b2.toInt());
                    _putRequest('수원',3,context.read<provider>().c3.toInt(),
                        context.read<provider>().e3.toInt(),
                        context.read<provider>().d3.toInt(),
                        context.read<provider>().f3.toInt(),
                        context.read<provider>().a.toInt(),
                        context.read<provider>().h30.toInt(),
                        context.read<provider>().b3.toInt());
                    _putRequest('김천',4,context.read<provider>().c4.toInt(),
                        context.read<provider>().e4.toInt(),
                        context.read<provider>().d4.toInt(),
                        context.read<provider>().f4.toInt(),
                        context.read<provider>().a.toInt(),
                        context.read<provider>().h40.toInt(),
                        context.read<provider>().b4.toInt());
                    _putRequest('서울',5,context.read<provider>().c5.toInt(),
                        context.read<provider>().e5.toInt(),
                        context.read<provider>().d5.toInt(),
                        context.read<provider>().f5.toInt(),
                        context.read<provider>().a.toInt(),
                        context.read<provider>().h50.toInt(),
                        context.read<provider>().b5.toInt());
                    _putRequest('인천',6,context.read<provider>().c6.toInt(),
                        context.read<provider>().e6.toInt(),
                        context.read<provider>().d6.toInt(),
                        context.read<provider>().f6.toInt(),
                        context.read<provider>().a.toInt(),
                        context.read<provider>().h60.toInt(),
                        context.read<provider>().b6.toInt());
                    _putRequest('포항',7,context.read<provider>().c7.toInt(),
                        context.read<provider>().e7.toInt(),
                        context.read<provider>().d7.toInt(),
                        context.read<provider>().f7.toInt(),
                        context.read<provider>().a.toInt(),
                        context.read<provider>().h70.toInt(),
                        context.read<provider>().b7.toInt());
                    _putRequest('대구',8,context.read<provider>().c8.toInt(),
                        context.read<provider>().e8.toInt(),
                        context.read<provider>().d8.toInt(),
                        context.read<provider>().f8.toInt(),
                        context.read<provider>().a.toInt(),
                        context.read<provider>().h80.toInt(),
                        context.read<provider>().b8.toInt());
                    _putRequest('제주',9,context.read<provider>().c9.toInt(),
                        context.read<provider>().e9.toInt(),
                        context.read<provider>().d9.toInt(),
                        context.read<provider>().f9.toInt(),
                        context.read<provider>().a.toInt(),
                        context.read<provider>().h90.toInt(),
                        context.read<provider>().b9.toInt());
                    _putRequest('수원fc',10,context.read<provider>().c10.toInt(),
                        context.read<provider>().e10.toInt(),
                        context.read<provider>().d10.toInt(),
                        context.read<provider>().f10.toInt(),
                        context.read<provider>().a.toInt(),
                        context.read<provider>().h1000.toInt(),
                        context.read<provider>().b10.toInt());
                    _putRequest('성남',11,context.read<provider>().c11.toInt(),
                        context.read<provider>().e11.toInt(),
                        context.read<provider>().d11.toInt(),
                        context.read<provider>().f11.toInt(),
                        context.read<provider>().a.toInt(),
                        context.read<provider>().h1100.toInt(),
                        context.read<provider>().b11.toInt());
                    _putRequest('강원',12,context.read<provider>().c12.toInt(),
                        context.read<provider>().e12.toInt(),
                        context.read<provider>().d12.toInt(),
                        context.read<provider>().f12.toInt(),
                        context.read<provider>().a.toInt(),
                        context.read<provider>().h1200.toInt(),
                        context.read<provider>().b12.toInt());

                  });
                });
              }
            }
        ),
      ),

    );
  }
}