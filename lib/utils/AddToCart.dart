import 'package:e_commers_app/utils/Deatils_Page.dart';
import 'package:e_commers_app/utils/HomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddtoCart extends StatefulWidget {
  const AddtoCart({super.key});

  @override
  State<AddtoCart> createState() => _AddtoCartState();
}

class _AddtoCartState extends State<AddtoCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Row(
              children: [
                Icon(Icons.arrow_circle_left_outlined),
                SizedBox(width: 94,),
                Text("My Cart",style: TextStyle(fontSize: 25),)
              ],
            ),
          ),
          Row(
            children: [
              Column(
                children: [
                  ...List.generate(dataStore.length, (index) => Container(
                    margin: EdgeInsets.all(5),
                    height: 170,
                    width: 400,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 165,
                              width: 200,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                image: DecorationImage(
                                  image: AssetImage(dataStore[index]['image']),
                                  fit:BoxFit.cover,
                                )
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.3),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(dataStore[index]["name"],style: TextStyle(fontSize: 20,fontWeight:  FontWeight.w500,),),
                              Text(dataStore[index]["price"],style: TextStyle(fontSize: 20,fontWeight:  FontWeight.w500,),),
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        InkWell(
                          onTap: () {
                            setState(() {
                              dataStore.removeAt(index);
                            });
                          },
                          child: Container(
                            height: 170,
                            width: 44,
                            decoration: BoxDecoration(
                               color: Colors.black,
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomLeft: Radius.circular(15)),
                            ),
                            child: Icon(Icons.delete,color: Colors.white,),
                          ),
                        )
                      ],
                    ),
                  )
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
