import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/homepic.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height:120.0),
            Row(
              children: [
                SizedBox(width:100.0),
                FlatButton(onPressed: (){
              Navigator.pushNamed(context,'/enterrank');
            }, child: Text('VALORANT RANK CHECK'),color: Colors.amber,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}