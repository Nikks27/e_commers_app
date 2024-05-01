import 'package:e_commers_app/utils/Deatils_Page.dart';
import 'package:e_commers_app/utils/productData.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: const EdgeInsets.only(top: 75, left: 15, right: 15),
            child: SingleChildScrollView(
              child: Column(children: [
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 262,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(width: 2, color: Colors.grey),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              size: 35,
                              color: Colors.grey,
                            ),
                            Text(
                              'Serch',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          color: Colors.brown,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.menu_outlined,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          color: Colors.brown,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.notifications,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    children: [
                      Container(
                        height: 282,
                        width: 380,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('Assest/images/modelphoto.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 10, right: 175),
                          child: Column(
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                        text: 'New Collection\n',
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 29,
                                            color: Colors.black)),
                                    TextSpan(
                                        text: 'Discount 50% For\n',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 23,
                                            color: Colors.black,
                                            height: 1)),
                                    TextSpan(
                                        text: 'The First Tansaction',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 23,
                                            color: Colors.black,
                                            height: 0)),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 125,
                                    decoration: BoxDecoration(
                                        color: Colors.brown,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Center(
                                      child: Text(
                                        'Shop Now',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.white),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 25),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                            menuLine.length,
                            (index) => Container(
                                  height: 50,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      color: Colors.brown.shade400,
                                      borderRadius: BorderRadius.circular(25)),
                                  margin: EdgeInsets.all(5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        menuLine[index],
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      )
                                    ],
                                  ),
                                ))),
                  ),
                ),
                Padding(padding: EdgeInsets.all(5)),
                Column(children: [
                  Wrap(
                  children: [

                    // ],
                  // )
                  ...List.generate(
                    productData.length,
                    (index) => InkWell(
                      onTap: () {
                        indexselect = index;
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DeatilsPage(),
                        ));
                      },
                      child:
                        // Wrap(
                      //  children: [
                         Column(
                         // crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Container(
                             margin: EdgeInsets.all(10),
                             height: 180,
                             width: 160,
                             decoration: BoxDecoration(
                               color: Colors.brown,
                               borderRadius: BorderRadius.circular(20),
                             ),
                             child: Image(
                               image: AssetImage(productData[index]["image"]),
                               fit: BoxFit.cover,
                             ),
                           ),
                           Text(
                             productData[index]['name'],
                             style: TextStyle(
                                 fontSize: 17, fontWeight: FontWeight.bold),
                           ),
                           Text(productData[index]['price']),
                         ],
                       ),
                  // ]
                      ),

                    ),
                  ]),
                ]),
              ]),
            )));
  }
}

List menuLine = ["All", "Men", "Women", "Kids", "Others"];
int indexselect = 10;
