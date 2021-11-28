import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class Getrank
{
  String ign='';
  String htg='';
  int lvl=0;
  String rgn='';
  String pid='';
  String curtier='';
  int rint=0;
  int elo=0;
  int mmrch=0;
  String ci='';
  
  Getrank(String a,String b)
  {
    ign = a;
    htg = b;
  }

  Future<void> getRank()async{
    try{
      Response response = await get(Uri.parse('https://api.henrikdev.xyz/valorant/v1/account/'+ign+'/'+htg));
      Map result = jsonDecode(response.body);
      Map result1 = result['data'];
      lvl = result1['account_level'];
      rgn = result1['region'];
      pid = result1['puuid'];
      Map result4 = result1['card'];
      print(lvl);
      print(rgn);
      print(pid);

      ci = result4['large'];

      print(ci);

      Response response1 = await get(Uri.parse('https://api.henrikdev.xyz/valorant/v1/by-puuid/mmr/'+rgn+'/'+pid));
      Map result2 = jsonDecode(response1.body);
      Map result3 = result2['data'];
      curtier = result3['currenttierpatched'];
      rint = result3['ranking_in_tier'];
      elo = result3['elo'];
      mmrch = result3['mmr_change_to_last_game'];

      print(curtier);
      print(rint);
      print(elo);
      print(mmrch);


    }
    catch(e){
      print('ERROR found.');
    }
  }

}