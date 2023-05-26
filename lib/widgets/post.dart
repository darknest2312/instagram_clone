import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/widgets/avatar.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width:  MediaQuery.of(context).size.width,
        height:  MediaQuery.of(context).size.height * 0.8,
        color: Colors.white,
        //Details above picture in POST
        child: Column(
          children: [
            Container(
              height:MediaQuery.of(context).size.height * 0.05 ,
              color: Colors.white,
              child: Row(
                  children: [
                    Avatar(radius: 15.0),
                    SizedBox(width: 5.0),
                    Text("Profile Name" , style: TextStyle(
                      fontFamily: 'Roboto',
                      color: Colors.black,
                      fontSize: 14.0,
                    )),
                    Spacer(),
                    IconButton(onPressed: (){}, icon:Icon(Icons.more_vert_outlined)),
                  ],
              )
            ),
            //The Picture of the post
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/car.jpg'), fit: BoxFit.cover)
              ),
            ),
            SizedBox(height: 1.0),
            //The Action Buttons below the photo in the post
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: (){}, icon:SvgPicture.asset('assets/icons/heart.svg')),
                IconButton(onPressed: (){}, icon:SvgPicture.asset('assets/icons/comment.svg')),
                IconButton(onPressed: (){}, icon:SvgPicture.asset('assets/icons/message.svg')),
                Spacer(),
                IconButton(onPressed: (){}, icon:SvgPicture.asset('assets/icons/save.svg')),
              ],
            ),
            SizedBox(height: 1.0),
            Row(
              children: [SizedBox(width: 10),Text('99,999 likes')],
            ),
            SizedBox(height: 5.0),
            Row(
              children: [SizedBox(width: 10),Text('Profile Name "Caption Goes Here" ')],
            ),
            Spacer(),
            //The Comment Part of the post
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    debugPrint('Button tapped');
                  },
                  child: CircleAvatar(
                    radius: 15.0,
                    backgroundColor: Colors.grey,
                  )
                ),
                SizedBox(width: 5.0),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: 1,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Add a comment"))
                )
              ]),
            Spacer(flex: 2)
          ],
        ),
      ),
    );
  }
}
