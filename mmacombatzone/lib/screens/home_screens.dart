
import 'package:flutter/material.dart';
import 'package:mmacombatzone/widgets/card_news.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final moviesProvider = Provider.of<MoviesProvider>(context);

    //print(moviesProvider.onDisplayMovies);


    return Scaffold(
      appBar: AppBar(
        title: const Text('UFC'),
        elevation: 0,
        actions: [IconButton(
          icon: const Icon(Icons.search_outlined),
          onPressed: () {},
          )],

      ),
      body:   SingleChildScrollView(
        child:  Column(
        children: [
         
          CardNews(),


          
        ],
      ),
      )
    );
  }
}