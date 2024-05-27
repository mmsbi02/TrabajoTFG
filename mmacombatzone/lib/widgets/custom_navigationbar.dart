// import 'package:flutter/material.dart';

// import 'package:mmacombatzone/screens/home_screens.dart';
// import 'package:mmacombatzone/screens/noticias_screens.dart';
// import 'package:mmacombatzone/screens/peleadores_screens.dart';
// import 'package:mmacombatzone/screens/proximos_eventos_screens.dart';


// class CustomNavigatorBar extends StatefulWidget {
//   const CustomNavigatorBar({super.key});

//   @override
//   State<CustomNavigatorBar> createState() => _CustomNavigatorBarState();
// }

// class _CustomNavigatorBarState extends State<CustomNavigatorBar> {
//   @override
//   Widget build(BuildContext context) {
//     int selectedIndex = 0;
//   final List<Widget> _screens = [
//    const HomeScreen(),
//    const NoticiasScreen(),
//    const PeleadoresScreen(),
//    const ProximosEventosScreen(),
//   ];
//   void _onItemTapped(int index) {
//     setState(() {
//       selectedIndex = index;
//     });
    
//   }

  

//     return BottomNavigationBar(
//       showSelectedLabels: false,
//       showUnselectedLabels: false,
//       backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
//       selectedItemColor: Colors.pink,
//       unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
//       onTap: _onItemTapped,
//       currentIndex: selectedIndex,
//       elevation: 0,
//       items: const <BottomNavigationBarItem>[
//         BottomNavigationBarItem(
//           icon: Icon(Icons.newspaper),
//           label: 'Noticias'

          
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.checklist_rtl),
//           label: 'Resultados',
          
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.calendar_month),
//           label: 'Próximos'
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.face_5_outlined),
//           label: 'Próximos'
//         ),
//       ],
//     );
//   }
// }
