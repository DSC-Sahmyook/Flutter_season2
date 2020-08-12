import 'package:flutter/material.dart';
import 'package:flutter_season2/widgets/getPosts.dart';
import 'package:flutter_season2/widgets/getStories.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return GetMain();
  }
}

class GetMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
        children: [
          Column(
            children: [
              Container(
                height: 85,
                child: GetStories(),
              ),
              Column(
                children: [
                  GetPosts(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
