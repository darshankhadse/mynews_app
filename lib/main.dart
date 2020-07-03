import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mynewsapp/login-register.dart';

void main() {
  runApp(MyApp());
}
final FirebaseAuth auth = FirebaseAuth.instance;
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
          child: PageViewDemo(),
        ),
      ),
    );
  }
}

class PageViewDemo extends StatefulWidget {
  @override
  _PageViewDemoState createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: [
        MyPage1Widget(),
        MyPage2Widget(),
        MyPage3Widget(),
        MyPage4Widget(),

      ],
    );
  }
}

class MyPage1Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/Group.png', width: 200, height: 150),
          SizedBox(width: 100, height: 100),
          Image.asset(
            'assets/images/News.png',
            width: 200,
            height: 80,
          )
        ],
      ),
    );
  }
}

class MyPage2Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Image.asset('assets/images/bg1.png', width: 300, height: 300,),
              ),
              Positioned(
                  top: 60,
                  left: 10,
                  right: 10,
                  child: Image.asset('assets/images/scr1.png',
                      width: 300, height: 300
                  ),
              ),],
            ),
              Image.asset('assets/images/text1.png',
                  width: double.maxFinite, height: 300
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0,right: 15.0),
                child: Align(alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                    backgroundColor: Colors.yellow,
                    child: Icon(Icons.arrow_forward,color: Colors.black,),
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyPage3Widget()));},
                  ),
                ),
              ),
             ],
      ),
    );
  }
}


class MyPage3Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Image.asset(
                  'assets/images/bg2.png', width: 300, height: 300,),
              ),
              Positioned(
                top: 65,
                left: 10,
                right: 10,
                child: Image.asset('assets/images/Head.png',
                    width: 100, height: 100),
              ),
              Positioned(
                  top: 125,
                  left: 57,
                  right: 10,
                  child: Image.asset('assets/images/sit.png',
                      width: 300, height: 300)),
            ],
          ),
          Image.asset('assets/images/text2.png',
              width: double.maxFinite, height: 300),
          Padding(
            padding: const EdgeInsets.only(top: 30.0,right: 15.0),
            child: Align(alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              backgroundColor: Colors.yellow,
              child: Icon(Icons.arrow_forward,color: Colors.black,),
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyPage4Widget()));},
            ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyPage4Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Image.asset('assets/images/bg.png', width: 300, height: 300,),
              ),
              Positioned(
                  top: 60,
                  left: 10,
                  right: 10,
                  child: Image.asset('assets/images/scr3.png',
                      width: 300, height: 300)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,100,10,50),
            child: Image.asset('assets/images/text32.png',
                width: double.maxFinite, height: 200),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginRegister()));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/btn3.png',
                width: double.maxFinite, height: 100,),
            ),
          ),
        ],
      ),
    );
  }
}

