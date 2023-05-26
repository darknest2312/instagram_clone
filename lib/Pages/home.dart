import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/widgets/avatar.dart';
import 'package:instagram_clone/widgets/post.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0XFFFAFAFA),
      appBar:AppBar(
        elevation: 0,
        backgroundColor: Color(0XFFFFFFFF),
        actions:<Widget>[
          Spacer(),
          Image(image: AssetImage('assets/images/logo.png'),width: 130.0,),
          Spacer(flex: 8,),
          IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/add.svg')),
          Spacer(),
          IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/heart.svg')),
          Spacer(),
          IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/message.svg')),
        ],
      ),

      body: Column(
        children: [
          Container(
              color: Color(0XFFFFFFFF),
              width: w,
              height: h*0.10,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context , index) => Avatar(radius: 40.0))
          ),
          SizedBox(height: 20.0),
          Expanded(child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemBuilder: (context , index) => Post(),))
        ],
      ),

    );

  }
}
