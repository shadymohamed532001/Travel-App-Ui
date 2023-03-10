import 'package:flutter/material.dart';

import 'HomeScrean.dart';

class WelcmeScrean extends StatelessWidget {
  const WelcmeScrean({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bg.jpg'),
          fit: BoxFit.cover,
          opacity: 0.7,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 65, horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Enjoy',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1.5,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'The World! ',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white.withOpacity(0.9),
                      letterSpacing: 1.2,
                      fontSize: 35),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry \'s standard dummy text ever since the 1500s.',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white.withOpacity(0.7),
                      letterSpacing: 1.2,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return HomeScrean();
                    }));
                  },
                  child: Ink(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black54,
                      size: 20,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
