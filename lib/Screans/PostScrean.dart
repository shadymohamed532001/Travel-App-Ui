

import 'package:flutter/material.dart';

import '../Widget/PostAppBar.dart';
import '../Widget/PostNavBar.dart';

class PostScrean extends StatelessWidget {
  const PostScrean({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/city6.jpg'),
            fit: BoxFit.cover,
            opacity: 0.7
          )
        ),
        child:Scaffold(
          backgroundColor: Colors.transparent,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(90),
            child: PostAppBar(),
          ),
          bottomNavigationBar: PostNavBar(),
        ) ,
      ),
    );
  }
}
