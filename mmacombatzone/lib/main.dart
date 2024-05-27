import 'package:flutter/material.dart';


import 'package:mmacombatzone/screens/favoritos_screens.dart';
import 'package:mmacombatzone/screens/home_screens.dart';
import 'package:mmacombatzone/screens/noticias_screens.dart';
import 'package:mmacombatzone/screens/peleadores_screens.dart';
import 'package:mmacombatzone/screens/proximos_eventos_screens.dart';
import 'package:provider/provider.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ScheduleProvider()),
      ],
      
      
      child: MaterialApp(
        
        debugShowCheckedModeBanner: false,
        title: 'Algo',
        initialRoute: 'home',
        routes: {
          'home': ( _ ) => const HomeScreen(),
          'noticias': ( _ ) => const NoticiasScreen(),
          'favoritos': ( _ ) => const FavoritosScreen(),
          'peleadores': ( _ ) => const PeleadoresScreen(),
          'proximos': ( _ ) => const ProximosEventosScreen(),
        },
         theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(
             
           ),
         ),
        
        
      ),
      
    
    );
  
  }
}