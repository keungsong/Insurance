import 'package:flutter/material.dart';
import 'package:insurace/pages/confirm.dart';
import 'package:insurace/pages/stepper.dart';

class PaymentPage extends StatefulWidget {
 

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>SeleteInsurace()));
        },
        color: Colors.black45,
        
        icon: Icon(Icons.arrow_back_ios),),
        title: Text('ປະກັນສຸຂະພາບ',style: TextStyle(color: Colors.black45),),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(right:20,left: 50,top: 50 ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 50,left: 30),
                child: Text('ເລືອກປະເພດການຊຳລະ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 20,),
                Container(
                  padding:EdgeInsets.only(right: 30,left: 5),
                  width:double.infinity,
                  child: SizedBox(
                    height: 50,
                    child: RaisedButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.purple),
                        ),
                      onPressed: (){
                        
                      }, child: Text('ຈ່າຍຜ່ານບັດເຄດິດ',style: TextStyle(color: Colors.purple,fontSize:16),)),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  padding:EdgeInsets.only(right: 30,left: 5),
                  width:double.infinity,
                  child: SizedBox(
                    height: 50,
                    child: RaisedButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.purple),
                        ),
                      onPressed: (){
                        
                      }, child: Text('BCEL',style: TextStyle(color: Colors.purple,fontSize:16),)),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}