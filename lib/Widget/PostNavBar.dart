import 'package:flutter/material.dart';

class PostNavBar extends StatelessWidget {
  const PostNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height /2,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          )),
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('City Name, Country',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 21
                  ),),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 25,
                        ),
                        Text(
                          '4.5',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold
                          ),
                        ),

                      ],
                    ),

                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(
                          right: 5
                        ),
                      child: Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                              'assets/images/city5.jpg',
                            fit: BoxFit.cover,
                            height: 90  ,
                            width: 112,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          right: 5
                      ),
                      child: Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'assets/images/city4.jpg',
                            fit: BoxFit.cover,
                            height: 90  ,
                            width: 112,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        height: 90,
                        margin: EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black,
                          image: DecorationImage(
                            image: AssetImage('assets/images/city6.jpg'),
                            fit: BoxFit.cover,
                            opacity: 0.4,
                          )
                        ),
                        child: Text(
                          '10+',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                      flex: 1,
                    ),

                  ],
                ),
                SizedBox(
                  height: 15,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 60,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4,
                          )
                        ]
                      ),
                      child: Icon(
                        Icons.bookmark_border_outlined,
                        size: 35,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 15,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4
                          )
                        ]
                      ),
                      child: Text(
                        'Book Now',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                          color: Colors.white
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
