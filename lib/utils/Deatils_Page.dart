import 'package:e_commers_app/utils/productData.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'HomePage.dart';
import 'AddToCart.dart';
class DeatilsPage extends StatefulWidget {
  const DeatilsPage({super.key});

  @override
  State<DeatilsPage> createState() => _DeatilsPageState();
}

class _DeatilsPageState extends State<DeatilsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

        child: Column(
          children: [
            Container(
              height: 400,
               width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xfff0e8dc),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(productData[indexselect]["image"]),
                  //
                )
              ),
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.all(8)),
                  Column(
                    children: [
                      Padding(padding: EdgeInsets.all(20)),
                      InkWell(
                        onTap:() {
                          Navigator.of(context).pop();
                        },
                          child: Icon(Icons.arrow_circle_left_outlined,size: 45,color: Colors.grey ,))
                    ],
                  ),
                   SizedBox(width: 300,),
                  Column(
                    children: [
                      Padding(padding: EdgeInsets.all(20)),
                      Icon(Icons.favorite_outline,size: 45,color: Colors.grey ,)
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.symmetric(vertical: 35,horizontal: 15)),
                Text( productData[indexselect]['name'],style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),),
                SizedBox(width: 120,height: 60,),
                Text("⭐ 5.9",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15)),
                Column(
                  children: [
                    Text(productData[indexselect]['price'],style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400),)
                  ],),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Padding(padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15)),
                Column(
                  children: [
                    Text("Lorem Ipsum is simply dummy text of the printing\nand typesetting industry.Lorem Ipsum has been the\nindustry's standard dummy text ever since the 1500s,",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),)
                  ],),
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15)),
                Column(
                  children: [
                    Text("-----------------------------------------",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400),)
                  ],),
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.symmetric(vertical: 0,horizontal: 15)),
                Column(
                  children: [
                    Text("Select Size",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400),)
                  ],),
              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(

                children: [
                    ...List.generate(SizeList.length ,(index) => Container(
                      margin: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),

                          border: Border.all(
                            color: Colors.black,width: 3,
                          )
                      ),
                      child: Center(child: Text(SizeList[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),)),
                    ))
                ],
              ),
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15)),
                Column(
                  children: [
                    Text("COLORS",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400),)
                  ],),
              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...List.generate(ColorList.length ,(index) => Container(
                    margin: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: ColorList[index],
                        shape: BoxShape.circle,


                    ),
                  ))
                ],
              ),
            ),
            InkWell(
              onTap: () {
                dataStore.add(productData[indexselect]);
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddtoCart(),));
              },
              child: Container(
                margin: EdgeInsets.all(20),
                height: 65,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(35),
                ),
                alignment: Alignment.center,
                child: Text("Add To Cart",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w900),),
              ),
            )

          ],
        ),
      ),
    );
  }
}
List SizeList=[
  "S",
  "M",
  "L",
  "XL",
  "XXL"
];
List ColorList=[
  Colors.brown,
  Colors.black,
  Colors.grey,
  Color(0xfff0e8dc),
  Colors.green

];
List dataStore=[];