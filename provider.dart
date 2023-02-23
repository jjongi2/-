import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class provider with ChangeNotifier {

  List<int> listf = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
  //List<int> listf1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];//득점
  // List<int> listb = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]; //승점

  int a = 0;
  int b1=0; //울산승점
  int c1=0; //울산 승
  int d1=0; //울산 무
  int e1=0; //울산 패
  int f1=0;//울산 득점
  int g1=0;
  int g10=0;//울산 실점
  int h1=0;
  int h10=0;//울산 득실차

  int b2=0; //전북승점
  int c2=0; //전북 승
  int d2=0; //전북 무
  int e2=0; //전북 패
  int f2=0; //전북 득점
  int g2=0;
  int g20=0; //전북 실점
  int h2=0;
  int h20=0; //전북 득실차

  int b3=0; //수원 승점
  int c3=0;
  int d3=0;
  int e3=0;
  int f3=0;
  int g3=0;
  int g30=0;
  int h3=0;
  int h30=0;

  int b4=0; //김천
  int c4=0;
  int d4=0;
  int e4=0;
  int f4=0;
  int g4=0;
  int g40=0;
  int h4=0;
  int h40=0;

  int b5=0; //서울
  int c5=0;
  int d5=0;
  int e5=0;
  int f5=0;
  int g5=0;
  int g50=0;
  int h5=0;
  int h50=0;

  int b6=0; //인천
  int c6=0;
  int d6=0;
  int e6=0;
  int f6=0;
  int g6=0;
  int g60=0;
  int h6=0;
  int h60=0;

  int b7=0; //포항
  int c7=0;
  int d7=0;
  int e7=0;
  int f7=0;
  int g7=0;
  int g70=0;
  int h7=0;
  int h70=0;

  int b8=0; //대구
  int c8=0;
  int d8=0;
  int e8=0;
  int f8=0;
  int g8=0;
  int g80=0;
  int h8=0;
  int h80=0;

  int b9=0; //제주
  int c9=0;
  int d9=0;
  int e9=0;
  int f9=0;
  int g9=0;
  int g90=0;
  int h9=0;
  int h90=0;

  int b10=0; //수원fc
  int c10=0;
  int d10=0;
  int e10=0;
  int f10=0;
  int g100=0;
  int g1000=0;
  int h100=0;
  int h1000=0;

  int b11=0; //성남
  int c11=0;
  int d11=0;
  int e11=0;
  int f11=0;
  int g110=0;
  int g1100=0;
  int h110=0;
  int h1100=0;

  int b12=0; //강원
  int c12=0;
  int d12=0;
  int e12=0;
  int f12=0;
  int g120=0;
  int g1200=0;
  int h120=0;
  int h1200=0;

  gamecount() {
    //경기수
    a += 1;
    notifyListeners();
  }
  gamepoint1() {
    //승점

    if (listf[0] > listf[1]) {
        f1+=listf[0]; //득점
        f2+=listf[1];
        b1+= 3; //승점
        c1+=1; //승
        g1+=listf[1]; //실점
        g10+=g1;
        h1=listf[0]-listf[1]; //승리팀득실차
        h10+=h1;
        e2+=1; //패
        g2+=listf[0]; //실점
        g20+=g2;
        h2=listf[1]-listf[0]; //패배팀득실차
        h20+=h2;
  }
    else if(listf[0]<listf[1]){
      f1+=listf[0];  //득점
      f2+=listf[1];
      b2+=3; //승점
      c2+=1; //승
      g2+=listf[0]; //승리팀 실점
      g20+=g2;
      h1=listf[0]-listf[1]; //패배팀 드실차
      h10+=h1;
      e1+=1; //패
      g1+=listf[1]; //패배팀 실점
      g10+=g1;
      h2=listf[1]-listf[0]; //승리팀 득실차
      h20+=h2;
    }
    else {
      b1 += 1; //승점
      b2 += 1;
      d1+=1;
      d2+=1;

      f1+=listf[0];  //득점
      f2+=listf[1];
      g2+=listf[0]; //실점
      g20+=g2;
      g1+=listf[1];
      g10+=g1;


    }
    notifyListeners();
  }
  gamepoint2() {
    //승점

    if (listf[2] > listf[3]) {
      f3+=listf[2]; //득점
      f4+=listf[3];
      b3+= 3; //승점
      c3+=1; //승
      g3+=listf[3]; //실점
      g30+=g3;
      h3=listf[2]-listf[3]; //승리팀득실차
      h30+=h3;
      e4+=1; //패
      g4+=listf[2]; //실점
      g20+=g2;
      h4=listf[3]-listf[2]; //패배팀득실차
      h40+=h4;
    }
    else if(listf[2]<listf[3]){
      f3+=listf[2];  //득점
      f4+=listf[3];
      b4+=3; //승점
      c4+=1; //승
      g4+=listf[2]; //승리팀 실점
      g40+=g4;
      h3=listf[2]-listf[3]; //패배팀 드실차
      h30+=h3;
      e3+=1; //패
      g3+=listf[3]; //패배팀 실점
      g30+=g3;
      h4=listf[3]-listf[2]; //승리팀 득실차
      h40+=h4;
    }
    else {
      b3 += 1; //승점
      b4 += 1;
      d3+=1;
      d4+=1;

      f3+=listf[2];  //득점
      f4+=listf[3];
      g3+=listf[3]; //실점
      g30+=g3;
      g4+=listf[2];
      g40+=g4;


    }
    notifyListeners();
  }
  gamepoint3() {
    //승점

    if (listf[4] > listf[5]) {
      f5+=listf[4]; //득점
      f6+=listf[5];
      b5+= 3; //승점
      c5+=1; //승
      g5+=listf[5]; //실점
      g50+=g5;
      h5=listf[4]-listf[5]; //승리팀득실차
      h50+=h5;
      e6+=1; //패
      g6+=listf[4]; //실점
      g60+=g6;
      h6=listf[5]-listf[4]; //패배팀득실차
      h60+=h6;
    }
    else if(listf[4]<listf[5]){
      f5+=listf[4];  //득점
      f6+=listf[5];
      b6+=3; //승점
      c6+=1; //승
      g6+=listf[4]; //승리팀 실점
      g60+=g6;
      h5=listf[4]-listf[5]; //패배팀 드실차
      h50+=h5;
      e5+=1; //패
      g5+=listf[5]; //패배팀 실점
      g50+=g5;
      h6=listf[5]-listf[4]; //승리팀 득실차
      h60+=h6;
    }
    else {
      b5 += 1; //승점
      b6 += 1;
      d5+=1;
      d6+=1;

      f5+=listf[4];  //득점
      f6+=listf[5];
      g5+=listf[5]; //실점
      g50+=g5;
      g6+=listf[4];
      g60+=g6;


    }
    gamepoint4() {
      //승점

      if (listf[4] > listf[5]) {
        f5+=listf[4]; //득점
        f6+=listf[5];
        b5+= 3; //승점
        c5+=1; //승
        g5+=listf[5]; //실점
        g50+=g5;
        h5=listf[4]-listf[5]; //승리팀득실차
        h50+=h5;
        e6+=1; //패
        g6+=listf[4]; //실점
        g60+=g6;
        h6=listf[5]-listf[4]; //패배팀득실차
        h60+=h6;
      }
      else if(listf[4]<listf[5]){
        f5+=listf[4];  //득점
        f6+=listf[5];
        b6+=3; //승점
        c6+=1; //승
        g6+=listf[4]; //승리팀 실점
        g60+=g6;
        h5=listf[4]-listf[5]; //패배팀 드실차
        h50+=h5;
        e5+=1; //패
        g5+=listf[5]; //패배팀 실점
        g50+=g5;
        h6=listf[5]-listf[4]; //승리팀 득실차
        h60+=h6;
      }
      else {
        b5 += 1; //승점
        b6 += 1;
        d5+=1;
        d6+=1;

        f5+=listf[4];  //득점
        f6+=listf[5];
        g5+=listf[5]; //실점
        g50+=g5;
        g6+=listf[4];
        g60+=g6;


      }
    notifyListeners();
  }
}

  void gamepoint4() {
    if (listf[6] > listf[7]) {
      f7+=listf[6]; //득점
      f8+=listf[7];
      b7+= 3; //승점
      c7+=1; //승
      g7+=listf[7]; //실점
      g70+=g7;
      h7=listf[6]-listf[7]; //승리팀득실차
      h70+=h7;
      e8+=1; //패
      g8+=listf[6]; //실점
      g80+=g8;
      h8=listf[7]-listf[6]; //패배팀득실차
      h80+=h8;
    }
    else if(listf[6]<listf[7]){
      f7+=listf[6];  //득점
      f8+=listf[7];
      b8+=3; //승점
      c8+=1; //승
      g8+=listf[6]; //승리팀 실점
      g80+=g8;
      h7=listf[6]-listf[7]; //패배팀 드실차
      h70+=h7;
      e7+=1; //패
      g7+=listf[7]; //패배팀 실점
      g70+=g7;
      h8=listf[7]-listf[6]; //승리팀 득실차
      h80+=h8;
    }
    else {
      b7 += 1; //승점
      b8 += 1;
      d7+=1;
      d8+=1;

      f7+=listf[6];  //득점
      f8+=listf[7];
      g7+=listf[7]; //실점
      g70+=g7;
      g8+=listf[6];
      g80+=g8;


    }
    notifyListeners();
  }

  void gamepoint5() {
    if (listf[8] > listf[9]) {
      f9+=listf[8]; //득점
      f10+=listf[9];
      b9+= 3; //승점
      c9+=1; //승
      g9+=listf[9]; //실점
      g90+=g9;
      h9=listf[8]-listf[9]; //승리팀득실차
      h90+=h9;
      e10+=1; //패
      g100+=listf[8]; //실점
      g1000+=g100;
      h100=listf[9]-listf[8]; //패배팀득실차
      h1000+=h100;
    }
    else if(listf[8]<listf[9]){
      f9+=listf[8];  //득점
      f10+=listf[9];
      b10+=3; //승점
      c10+=1; //승
      g100+=listf[8]; //승리팀 실점
      g1000+=g100;
      h9=listf[8]-listf[9]; //패배팀 드실차
      h90+=h9;
      e9+=1; //패
      g9+=listf[8]; //패배팀 실점
      g90+=g9;
      h100=listf[9]-listf[8]; //승리팀 득실차
      h1000+=h100;
    }
    else {
      b9 += 1; //승점
      b10 += 1;
      d9+=1;
      d10+=1;

      f9+=listf[8];  //득점
      f10+=listf[9];
      g9+=listf[9]; //실점
      g90+=g9;
      g100+=listf[8];
      g1000+=g100;


    }
    notifyListeners();

  }

  void gamepoint6() {
    if (listf[10] > listf[11]) {
      f11+=listf[10]; //득점
      f12+=listf[11];
      b11+= 3; //승점
      c11+=1; //승
      g110+=listf[11]; //실점
      g1100+=g110;
      h110=listf[10]-listf[11]; //승리팀득실차
      h1100+=h110;
      e12+=1; //패
      g120+=listf[10]; //실점
      g1200+=g120;
      h120=listf[11]-listf[10]; //패배팀득실차
      h1200+=h120;
    }
    else if(listf[10]<listf[11]){
      f11+=listf[10];  //득점
      f12+=listf[11];
      b12+=3; //승점
      c12+=1; //승
      g120+=listf[10]; //승리팀 실점
      g1200+=g120;
      h110=listf[10]-listf[11]; //패배팀 드실차
      h1100+=h110;
      e11+=1; //패
      g110+=listf[8]; //패배팀 실점
      g1100+=g110;
      h120=listf[11]-listf[10]; //승리팀 득실차
      h1200+=h120;
    }
    else {
      b11 += 1; //승점
      b12 += 1;
      d11+=1;
      d12+=1;

      f11+=listf[10];  //득점
      f12+=listf[11];
      g110+=listf[11]; //실점
      g1100+=g110;
      g120+=listf[10];
      g1200+=g120;


    }
    notifyListeners();
  }
  }














