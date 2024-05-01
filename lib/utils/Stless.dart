import 'package:e_commers_app/utils/Deatils_Page.dart';
import 'package:e_commers_app/utils/HomePage.dart';
import 'package:e_commers_app/utils/Splacescreen.dart';
import 'package:flutter/material.dart';

class E_commerce extends StatelessWidget {
  const E_commerce({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
