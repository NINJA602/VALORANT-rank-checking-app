import 'package:flutter/material.dart';

class Loadingg extends StatefulWidget {
  const Loadingg({ Key? key }) : super(key: key);

  @override
  _LoadinggState createState() => _LoadinggState();
}

class _LoadinggState extends State<Loadingg> {
  
  
  @override
   void initState()
  {
    super.initState();
    _navigatetohome();
  }
    
  
  _navigatetohome()
  async {
      await Future.delayed(const Duration(milliseconds: 3000), () {
      setState(() {});
        });
      Navigator.pushReplacementNamed(context,'/');
  }
  
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/loadingpic.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}