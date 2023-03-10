import 'package:flutter/material.dart';

import 'PostScrean.dart';
import '../Widget/HomeAppBar.dart';
import '../Widget/HomeBottomBar.dart';

class HomeScrean extends StatefulWidget {
  const HomeScrean({Key? key}) : super(key: key);

  @override
  State<HomeScrean> createState() => _HomeScreanState();
}

class _HomeScreanState extends State<HomeScrean> {
  List<String> catogry = [
    'Best Place',
    'Most Visted',
    'Favourites',
    'New Added',
    'Hotels',
    'Resturantes',
    'Cafes',
    'Amazing Places'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: HomeAppBar(),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 30,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      height: 200,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {},
                              child: Container(
                                width: 160,
                                margin: EdgeInsets.only(left: 15),
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/city${index + 1}.jpg'),
                                      fit: BoxFit.cover,
                                      opacity: 0.7,
                                    )),
                                child: Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.topRight,
                                      child: Icon(
                                        Icons.bookmark_border_outlined,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        'City Name',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                    )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        for (int i = 0; i <= 7; i++)
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 6,
                                  )
                                ]),
                            child: Text(
                              '${catogry[i]}',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 15),
                            ),
                          )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 6,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return PostScrean();
                                }));
                              },
                              child: Container(
                                height: 200,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/city${index + 1}.jpg'),
                                      fit: BoxFit.cover,
                                      opacity: 0.8,
                                    )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'City Name',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Icon(
                                    Icons.more_vert,
                                    size: 30,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 22,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}
