import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';
import 'package:insurace/pages/distand_select.dart';
import 'package:insurace/pages/stepper.dart';

class CustomInfo extends StatelessWidget {
  

  final VoidCallback nextButton;

  const CustomInfo({Key key, this.nextButton}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             
             Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('ຂໍ້ມູນຜູ້ຊື້ປະກັນໄພ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('ຊື່ ແລະ ນາມສະກຸນ*',style: TextStyle(color: Colors.black54,),
              
              
              ),
            ),
             Padding(
               padding: const EdgeInsets.only(left: 20,right: 20),
               child: SizedBox(
                 height: 50,
                 child: TextFormField(
                   
                        decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey[100]))),
                      ),
               ),
             ),
              Padding(
              padding: const EdgeInsets.only(left: 20,top: 5),
              child: Text('ເບີໂທ*',style: TextStyle(color: Colors.black54,),
              
              
              ),
            ),
             Padding(
               padding: const EdgeInsets.only(left: 20,right: 20),
               child: SizedBox(
                 height: 50,
                 child: TextFormField(
                        decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey[100]))),
                      ),
               ),
             ),
              Padding(
              padding: const EdgeInsets.only(left: 20,top: 5),
              child: Text('ອິເມວ*',style: TextStyle(color: Colors.black54,),
              
              
              ),
            ),
             Padding(
               padding: const EdgeInsets.only(left: 20,right: 20),
               child: SizedBox(
                 height: 50,
                 child: TextFormField(
                        decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey[100]))),
                      ),
               ),
             ),
              Padding(
              padding: const EdgeInsets.only(left: 20,top: 5),
              child: Text('ບັດປະຈຳຕົວ ຫຼື Passport*',style: TextStyle(color: Colors.black54,),
              
              
              ),
            ),
             Padding(
               padding: const EdgeInsets.only(left: 20,right: 20),
               child: SizedBox(
                 height: 50,
                 child: TextFormField(
                        decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey[100]))),
                      ),
               ),
             ),
              Padding(
              padding: const EdgeInsets.only(left: 20,top: 5),
              child: Text('ທ່ີ່ຢູ່*',style: TextStyle(color: Colors.black54,),
              
              
              ),
            ),
            Padding(
               padding: const EdgeInsets.only(left: 20,right: 20),
               child: TextFormField(
                      decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey[100]),
                      ),
                      ),
                      maxLines: 4,
                    ),
             ),
              SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 220),
                  child: SizedBox(
                    width: 150,
                    height: 35,
                    child: RaisedButton(
                      color: Colors.purple,
                      onPressed: (){
                        if(nextButton != null){
                          nextButton();
                        }
                      }, child: Text('ຕໍ່ໄປ',style: TextStyle(color: Colors.white),)),
                  ),
                )
            ],
        ),
      ),
    );
  }
}