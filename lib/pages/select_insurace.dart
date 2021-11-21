import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';

class SelectInsurace extends StatelessWidget {
 

  final VoidCallback onYourSelfTap;
  final VoidCallback onFamilyTap;

  const SelectInsurace({Key key, this.onYourSelfTap, this.onFamilyTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           
             Padding(
              padding: const EdgeInsets.only(right: 20,left: 40),
              child: Text('ເລືອກຊື້ປະກັນໄພ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Card(
                  elevation: 8,
           margin: EdgeInsets.all(10),
           child: InkWell(
             onTap:() {
                if (onYourSelfTap != null) {
                    onYourSelfTap();
                  }
             }
             ,
             splashColor: Colors.grey,
             child: Center(
               child: Column(
                 mainAxisSize: MainAxisSize.min,
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(top: 20),
                     child: Icon(Icons.person,size: 40,color:Colors.purple),
                   ),
                  
                   Center(child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text('ປະກັນສ່ວນບຸກຄົນ',textAlign: TextAlign.center,style: TextStyle(fontSize: 14),),
                   )),
                 ],
               ),
             ),
           ),
         ),
         Card(
           elevation: 8,
           margin: EdgeInsets.all(10),
           child: InkWell(
             onTap: (){
                if (onFamilyTap != null) {
                    onFamilyTap();
                  }
             },
             splashColor: Colors.grey,
             child: Center(
               child: Column(
                 mainAxisSize: MainAxisSize.min,
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(top: 20),
                     child: Icon(Icons.group,size: 40,color:Colors.purple),
                   ),
                   
                   Center(child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text('ປະກັນແບບຄອບຄົວ',style: TextStyle(fontSize: 14),),
                   )),
                 ],
               ),
             ),
           ),
         ),
              ],
            )
         ]));
  }
}

