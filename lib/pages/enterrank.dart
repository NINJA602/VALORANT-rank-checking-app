import 'package:flutter/material.dart';
import 'package:valorant_rank_checker/services/getrank.dart';

String a1='';
String a2='';
int a3=0;
String a4='';
String a5='';
String a6='';
int a7=0;
int a8=0;
int a9=0;
String a10='';



class EnterRank extends StatefulWidget {
  const EnterRank({ Key? key }) : super(key: key);

  @override
  _EnterRankState createState() => _EnterRankState();
}



class _EnterRankState extends State<EnterRank> {
  @override
  
  TextEditingController htt = TextEditingController();
  TextEditingController gtt = TextEditingController();
  
  Future<void> FT()
  async {
    Getrank instance = Getrank(htt.value.text,gtt.value.text);
    await instance.getRank();
    a1=instance.ign;
    a2=instance.htg;
    a3=instance.lvl;
    a4=instance.rgn;
    a5=instance.pid;
    a6=instance.curtier;
    a7=instance.rint;
    a8=instance.elo;
    a9=instance.mmrch;
    a10=instance.ci;
  }
  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      /*appBar: AppBar(
        backgroundColor: Colors.redAccent,
        shadowColor: Colors.red,
        elevation: 2.0,
        title: Text('CHECK YOUR RANK '),
        centerTitle: true,
      ),*/
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/jetthand.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(height:50.0),
              Text('IN-GAME NAME : ',style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),),
              Container(
                padding: EdgeInsets.fromLTRB(60.0, 15.0, 60.0, 10.0),
                child: TextField(
                  controller: htt,
                  decoration: InputDecoration(
                    hintText:'Enter your in-game name...',
                    fillColor: Colors.grey[400],
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100.0),
                      borderSide: BorderSide.none,
                    ),
                  ),

                ),
              ),
              Text('# : ',style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),),
              Container(
                padding: EdgeInsets.fromLTRB(60.0, 15.0, 60.0, 10.0),
                child: TextField(
                  controller: gtt,
                  decoration: InputDecoration(
                    hintText:'Enter your #...',
                    fillColor: Colors.grey[400],
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height:80.0),
              Row(
                children: [
                  SizedBox(width:140.0),
                  ElevatedButton(onPressed: ()async{
                    FocusScope.of(context).unfocus();  // removes keyboard after pressing the button
                    await FT();                        // first gathers info then moves onto the next page
                    Navigator.pushNamed(context,'/rankinfo',
                    arguments: {
                      'nem':a1,
                      'hash':a2,
                      'level':a3,
                      'region':a4,
                      'piid':a5,
                      'current':a6,
                      'pts':a7,
                      'eloo':a8,
                      'change':a9,
                      'cardi':a10
                    });              
                  }, child: Text('CHECK RANK'),
                  style:  ElevatedButton.styleFrom(shape: StadiumBorder()),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}