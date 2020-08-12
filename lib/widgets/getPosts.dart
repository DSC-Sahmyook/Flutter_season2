import 'package:flutter/material.dart';
import 'package:flutter_season2/models/global.dart';
import 'package:flutter_season2/models/post.dart';

class GetPosts extends StatefulWidget {
  @override
  _GetPostsState createState() => _GetPostsState();
}

class _GetPostsState extends State<GetPosts> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      primary: false,
      shrinkWrap: true,
      itemCount: userPosts.length,
      itemBuilder: (context, index) {
        Post post = userPosts[index];
        return Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: CircleAvatar(
                            backgroundImage: post.user.profilePicture,
                          ),
                        ),
                        Text(post.user.username),
                      ],
                    ),
                    IconButton(
                      icon: Icon(Icons.more_horiz),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              Container(
                constraints: BoxConstraints.expand(height: 1),
                color: Colors.grey,
              ),
              Container(
                constraints: BoxConstraints(maxHeight: 285),
                decoration: BoxDecoration(
                  image: DecorationImage(image: post.image),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
