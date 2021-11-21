import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';
import 'package:insurace/pages/distand_select.dart';
import 'package:insurace/pages/payment.dart';

class ConfirmPage extends StatefulWidget {
 

  @override
  _ConfirmPageState createState() => _ConfirmPageState();
}

class _ConfirmPageState extends State<ConfirmPage> {
final check = CheckBoxModel(title:"ຂ້ອຍໄດ້ອ່ານ ແລະ ເຂົ້າໃຈຍອມຮັບ");
bool value =false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
          
             Padding(
              padding: const EdgeInsets.only(right: 20,left: 40),
              child: Text('ຂໍ້ມູນປະກັນໄພ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              
            ),
            Padding(
              padding: EdgeInsets.only(right: 40,left: 40,top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("ຂ້າພະເຈົ້າຢືນຢັນວ່າ",style: TextStyle(color: Colors.black54,fontSize: 16,letterSpacing: 0.1),),
                Text("ຂ້າພະເຈົ້າໄດ້ຕອບຄຳຖາມທັງໝົດດ້ວຍຄວາມຈີງ ແລະ  ຕາມທີ່ຂ້າພະເຈົ້າຮັບຮູ້. ຂ້າພະເຈົ້າຮູ້ວ່າ ຄໍ່ຕອບທີ່ບໍ່ຖືກຕ້ອງ ຫຼື ຂ້າພະເຈົ້າ",style: TextStyle(color: Colors.black54,fontSize: 16,letterSpacing: 0.1),),
               
                 Text("ຂ້າພະເຈົ້າໄດ້ຕອບຄຳຖາມທັງໝົດດ້ວຍຄວາມຈີງ ແລະ  ຕາມທີ່ຂ້າພະເຈົ້າຮັບຮູ້. ຂ້າພະເຈົ້າຮູ້ວ່າ ຄໍ່ຕອບທີ່ບໍ່ຖືກຕ້ອງ ຫຼື ບໍ່ຄົບຖ້ວນ",style: TextStyle(color: Colors.black54,fontSize: 16,letterSpacing: 0.1),),
                ],
              ),
            ),
           Padding(
             padding: const EdgeInsets.only(left: 10,top: 30),
             child: ListTile(
               leading: Checkbox(
                 checkColor: Colors.white,
                 value: check.value,
                 activeColor: Colors.purple,

                  onChanged: (value){
                   setState(() {
                                        check.value = !check.value;
                                      });
                 }),
               title: Text(check.title),
             ),
           ),
           SizedBox(height: 30,),
                Container(
                  padding:EdgeInsets.only(right: 28,left: 28),
                  width:double.infinity,
                  child: SizedBox(
                    height: 50,
                    child: RaisedButton(
                      color: Colors.purple,
                      onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentPage()));
                      }, child: Text('ຊື້ປະກັນໄພ',style: TextStyle(color: Colors.white,fontSize:18),)),
                  ),
                )
         ],
         
      ),
      
    );
  }
}



class CheckBoxModel {
  String title;
  bool value;
  CheckBoxModel({@required this.title,this.value = false});
}