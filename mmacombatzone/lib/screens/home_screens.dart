
import 'package:flutter/material.dart';
import 'package:mmacombatzone/widgets/card_news.dart';
import 'package:mmacombatzone/widgets/menu_drawer.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UFC'),
        centerTitle: true,
        elevation: 0,
        
        actions: [IconButton(
          icon: const Icon(Icons.search_outlined),
          onPressed: () {},
          )],

      ),
      drawer: MenuDrawer(),
      body:   SingleChildScrollView(
        child:  Column(
        children: [
         
          CardNews(),
        ],
      ),
      ),
     
    );
  }
}