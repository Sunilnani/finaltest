import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> text1=["1.","2.","3.","4.","5."];
  List<String> text2=["Public","Bennee feat.Gus Dappertion","Trevor Daniel","Surface","Lewis Capaldi"];
  List<String> text3=["Make You Mine","Sapolny","Falling","Sunday Best","Someone You Liked"];
  List<String> text4=["3:30","3:40","3:30","3:40","3:30",];
  List <Color> colors=[Colors.white,Colors.white,Colors.purpleAccent,Colors.white,Colors.white];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 15,),
                  Container(
                    child: ListView.builder(
                      itemCount: text1.length,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (context, index){
                        return Music(
                         text1: text1[index],
                         text2: text2[index],
                         text3: text3[index],
                         text4: text4[index],
                          colors: colors[index],
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 5,),
                  CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 85,
                    child: CircleAvatar(
                      radius: 80,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        backgroundColor: Colors.black26,
                        radius: 65,
                        backgroundImage: AssetImage("img/apple.png"),
                      ),
                    ),
                  ),
                  SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("SunDay Best",style: TextStyle(color: Colors.black,fontWeight:FontWeight.w800,fontSize: 20),),
                            Text("Surface",style: TextStyle(color: Colors.black26,fontSize: 15,fontWeight: FontWeight.w400),)
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Image(image:AssetImage("img/wave.png")),
                            Text("-3:42",style:TextStyle(color: Colors.red))
                          ],

                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.shuffle,),
                      Icon(Icons.arrow_back_outlined,size: 30,),
                      Icon(Icons.play_circle_filled,color: Colors.red,size: 30,),
                      Icon(Icons.arrow_forward,size: 30,),
                      Icon(Icons.menu,size: 30,)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),

      )
    );
  }
}

class Music extends StatefulWidget {
  const Music({
    this.text1,
    this.text2,
    this.text3,
    this.text4,
    this.colors,
    Key key,
  }) : super(key: key);
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final Color colors;

  @override
  _MusicState createState() => _MusicState();
}

class _MusicState extends State<Music> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          decoration: BoxDecoration(
            color:widget.colors,
            borderRadius: BorderRadius.circular(30)
          ),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Text(widget.text1,style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w400),),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.text2,style: TextStyle(color: Colors.black26,fontSize: 15,fontWeight: FontWeight.w400),),
                        SizedBox(height: 10,),
                        Text(widget.text3,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 16),)
                      ],
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Text(widget.text4,style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w500),),
                    SizedBox(width: 10,),
                    Icon(Icons.favorite_border_outlined,color: Colors.black26,)
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 10,)
      ],
    );
  }
}
