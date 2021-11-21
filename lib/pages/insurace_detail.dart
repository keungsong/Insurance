import 'package:flutter/material.dart';
import 'package:insurace/pages/home_dashdoard.dart';
import 'package:insurace/pages/stepper.dart';

class InsuraceDetail extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
        },
        color: Colors.black45,
        
        icon: Icon(Icons.arrow_back_ios),),
        title: Text('ປະກັນສຸຂະພາບ',style: TextStyle(color: Colors.black45),),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("ລາຍລະອຽດປະກັນໄພ",style: TextStyle(color: Colors.black54,fontSize: 20),),
              SizedBox(height: 10,),
               Text("ຂ້າພະເຈົ້າຢືນຢັນວ່າ",style: TextStyle(color: Colors.black54,fontSize: 16,letterSpacing: 1),),
                Text("ຂ້າພະເຈົ້າໄດ້ຕອບຄຳຖາມທັງໝົດດ້ວຍຄວາມຈີງ ແລະ  ຕາມທີ່ຂ້າພະເຈົ້າຮັບຮູ້. ຂ້າພະເຈົ້າຮູ້ວ່າ ຄໍ່ຕອບທີ່ບໍ່ຖືກຕ້ອງ ຫຼື ຂ້າພະເຈົ້າ",style: TextStyle(color: Colors.black54,fontSize: 16,letterSpacing: 1),),
                Text("ຂ້າພະເຈົ້າຢືນຢັນວ່າ",style: TextStyle(color: Colors.black54,fontSize: 16,letterSpacing: 1),),
                 Text("ຂ້າພະເຈົ້າໄດ້ຕອບຄຳຖາມທັງໝົດດ້ວຍຄວາມຈີງ ແລະ  ຕາມທີ່ຂ້າພະເຈົ້າຮັບຮູ້. ຂ້າພະເຈົ້າຮູ້ວ່າ ຄໍ່ຕອບທີ່ບໍ່ຖືກຕ້ອງ ຫຼື ຂ້າພະເຈົ້າ",style: TextStyle(color: Colors.black54,fontSize: 16,letterSpacing: 1),),
                SizedBox(height: 60,),
                Padding(
                  padding: const EdgeInsets.only(left: 200),
                  child: SizedBox(
                    width: 170,
                    height: 45,
                    child: RaisedButton(
                      color: Colors.purple,
                      onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>SeleteInsurace()));
                      }, child: Text('ຊື້ປະກັນໄພ',style: TextStyle(color: Colors.white),)),
                  ),
                )
            ],
          ),
          
        ),
      ),
      
      
    );
  }
}