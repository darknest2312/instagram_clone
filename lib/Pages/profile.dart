import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/widgets/avatar.dart';
import 'package:instagram_clone/widgets/post.dart';
import 'package:instagram_clone/widgets/highlight.dart';

class Profile extends StatefulWidget  {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabcontroller = TabController(length: 3, vsync: this);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          Spacer(),
          Center(child: Text('Profile Name', style: TextStyle(color: Colors.black,fontSize: 20.0 , fontFamily: 'Robota'))),
          Spacer(),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz) , color: Colors.black,)
          ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.15,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:
                [SizedBox(width: 10.0),
                  Avatar(radius: 50.0),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("200"),
                      Text("Posts")
                    ]),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("140K"),
                      Text("Followers")
                      ]),
                  Spacer(),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("2300"),
                        Text("Following")
                      ]),
                  Spacer(),
                ],
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(width: 20.0),
              Text("User Name"),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 20.0),
              Text("User Bio Goes Here"),
            ],
          ),
          SizedBox(height: 5.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Spacer(),
              ElevatedButton(
                onPressed: (){},
                child: Text("    Follow    "),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF5793EA))
                )),
              Spacer(),
              ElevatedButton(
                  onPressed: (){},
                  child: Text("   Message   " , style: TextStyle(color: Colors.black),),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white)
                  )),
              Spacer(),
              ElevatedButton(
                  onPressed: (){},
                  child: Text("   Contact   " , style: TextStyle(color: Colors.black),),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white)
                  )),
              Spacer(),
            ]
          ),
          SizedBox(height: 15.0),
          Container(
              color: Color(0XFFFFFFFF),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.10,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context , index) => Highlight(radius: 40.0))
          ),
          SizedBox(height: 10.0,),
          Container(
            child: TabBar(
              controller: _tabcontroller,
                tabs: [
                  Icon(Icons.grid_view_rounded,color: Colors.black,size: 32.0),
                  Icon(Icons.video_call,color: Colors.black,size: 35.0),
                  Icon(Icons.play_arrow_rounded,color: Colors.black,size: 35.0),
                ]),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width*0.835,
            child: TabBarView(
              controller: _tabcontroller,
                children: [
                  GridView.count(crossAxisCount: 3 ,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 2,
                    children: [
                    Container(decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0XFF9B2282),Color(0XFFEE8A63)])
                    ),),
                    Container(decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0XFF9B2282),Color(0XFFEE8A63)])
                    ),),
                    Container(decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0XFF9B2282),Color(0XFFEE8A63)])
                    ),),
                    Container(decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0XFF9B2282),Color(0XFFEE8A63)])
                    ),),
                    Container(decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0XFF9B2282),Color(0XFFEE8A63)])
                    ),),
                    Container(decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0XFF9B2282),Color(0XFFEE8A63)])
                    ),),
                    Container(decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0XFF9B2282),Color(0XFFEE8A63)])
                    ),),
                    Container(decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0XFF9B2282),Color(0XFFEE8A63)])
                    ),),


                  ],),
                  GridView.count(crossAxisCount: 3 ,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 2,
                    children: [
                      Container(decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0XFF9B2282),Color(0XFFEE8A63)])
                      ),),
                      Container(decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0XFF9B2282),Color(0XFFEE8A63)])
                      ),),
                      Container(decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0XFF9B2282),Color(0XFFEE8A63)])
                      ),),
                      Container(decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0XFF9B2282),Color(0XFFEE8A63)])
                      ),),
                      Container(decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0XFF9B2282),Color(0XFFEE8A63)])
                      ),),
                      Container(decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0XFF9B2282),Color(0XFFEE8A63)])
                      ),),
                      Container(decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0XFF9B2282),Color(0XFFEE8A63)])
                      ),),
                      Container(decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0XFF9B2282),Color(0XFFEE8A63)])
                      ),),


                    ],),
                  GridView.count(crossAxisCount: 3 ,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 2,
                    children: [
                      Container(decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0XFF9B2282),Color(0XFFEE8A63)])
                      ),),
                      Container(decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0XFF9B2282),Color(0XFFEE8A63)])
                      ),),
                      Container(decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0XFF9B2282),Color(0XFFEE8A63)])
                      ),),
                      Container(decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0XFF9B2282),Color(0XFFEE8A63)])
                      ),),
                      Container(decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0XFF9B2282),Color(0XFFEE8A63)])
                      ),),
                      Container(decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0XFF9B2282),Color(0XFFEE8A63)])
                      ),),
                      Container(decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0XFF9B2282),Color(0XFFEE8A63)])
                      ),),
                      Container(decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0XFF9B2282),Color(0XFFEE8A63)])
                      ),),


                    ],)
                ]),
          )
        ],
      ),
    );
  }
}
