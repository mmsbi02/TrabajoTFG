
import "package:flutter/material.dart";
import "package:mmacombatzone/theme/app_theme.dart";



class CardNews extends StatelessWidget {

 

  @override
  Widget build(BuildContext context) {
    return   Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius:BorderRadius.circular(30), 
        
        ),
      elevation: 10,
      
      //shadowColor:AppTheme.primary.withOpacity(0.5),
      child:  const Column(
        
        children: [

           ListTile(
            leading: Icon(Icons.ac_unit_sharp, color: AppTheme.primary,),
            title: Text('Soy un titulo'),
            subtitle: Text('fshsghdjgdyhjdyhjdyhjy'),
          ),
          Padding(
            padding: EdgeInsets.only(right: 9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                
              ],
            
            ),
          ),

        ],
      ),
    );
  }
}
