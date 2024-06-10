import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mmacombatzone/screens/favoritos_screens.dart';
import 'package:mmacombatzone/services/select_image.dart';



class MenuDrawer extends StatefulWidget {
  const MenuDrawer({super.key});

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  File? imagen_toUpload;
  @override
  Widget build(BuildContext context) {
    
    return Drawer(
        child: ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: const Text("Persona Persona"),//ejemplo
          accountEmail: const Text("email@prueba.com"),//ejemplo
        currentAccountPicture: 
        imagen_toUpload != null ? Image.file(imagen_toUpload!) : const CircleAvatar(
          backgroundImage: AssetImage('assets/no-image.jpg'),
          
        ),

          decoration:const BoxDecoration(
            color: Color.fromARGB(255, 46, 51, 181),
          ),
        ),
        ElevatedButton(
            onPressed: () async{
              final  imagen = await getImage();
              
              setState(() {
                imagen_toUpload = File(imagen!.path);
               
              });
            }, child: const Text('Selecciona imagen')),
        ListTile(
          title: const Text('Favoritos'),
          leading: const Icon(Icons.star),
          onTap: () => Navigator.pushNamed(context, 'favoritos'),
        ),
       
       
      ],
    ));
  }
}