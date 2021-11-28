import 'package:flutter/material.dart';

class RankInfo extends StatefulWidget {
  const RankInfo({ Key? key }) : super(key: key);

  @override
  _RankInfoState createState() => _RankInfoState();
}

Map df={};

class _RankInfoState extends State<RankInfo> {
  @override
  
  Widget build(BuildContext context) {
    
    final df = ModalRoute.of(context)!.settings.arguments;     // this line has to be inside widget build function o/w it will give bt

    int tt = (df as dynamic)['change'];
    String anss='';
    if(tt<0)
      anss = tt.toString();
    else
    {
      anss = tt.toString();
      anss='+'+anss;
    }
    
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        shadowColor: Colors.red,
        elevation:5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30),
          ),
        ),
        title: Text('${(df as dynamic)['nem']}   #${(df as dynamic)['hash']}'),
        centerTitle: true,  // 'as dynamic ' is important
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white38,Colors.blue],
            ),
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height:20.0),
              Row(
                children: [
                  SizedBox(width: 10.0),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow:[
                        BoxShadow(
                          color: Colors.red,
                          blurRadius: 50.0,
                        ),
                      ],
                    ),
                    height: 350.0,
                    width: 180.0,
                    child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image(
                    image: NetworkImage('${(df as dynamic)['cardi']}'),
                      ),
                    ),
                  ),
                  SizedBox(width: 50.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                        Image.asset('images/${(df as dynamic)['current']}.png',height:170.0,width:110.0),
                        Text('LEVEL',style: TextStyle(
                          color: Colors.black87,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        )),
                        Text('${(df as dynamic)['level']}',style: TextStyle(
                          color: Colors.greenAccent,
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                        ),),
                        SizedBox(height:10.0),
                        Text('REGION',style: TextStyle(
                          color: Colors.black87,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        )),
                        Text('${(df as dynamic)['region'].toUpperCase()}',style: TextStyle(
                          color: Colors.greenAccent,
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                        ),),
                    ],
                  ),
                ],
              ),
              SizedBox(height:60.0),
              Text('     CURRENT PTS. in TIER ',style: TextStyle(
                color: Colors.black87,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),),
              Text('     ${(df as dynamic)['pts']}/100',style: TextStyle(
                color: Colors.purple,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(height: 15.0,),
              Text('     CURRENT ELO ',style: TextStyle(
                color: Colors.black87,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),),
              Text('     ${(df as dynamic)['eloo']}',style: TextStyle(
                color: Colors.purple,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(height: 15.0,),
              Text('     LAST ELO CHANGE ',style: TextStyle(
                color: Colors.black87,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),),
              Text('     ${anss}',style: TextStyle(
                color: Colors.purple,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(height: 15.0,),
            ],
          ),
        ),
      ),
    );
  }
}