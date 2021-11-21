import 'package:flutter/material.dart';
import 'package:insurace/pages/insurace_detail.dart';

class HomePage extends StatefulWidget {
  
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
           backgroundColor: Colors.white,
           elevation: 0,
           centerTitle: true,
           leading: IconButton(icon: Icon(Icons.arrow_back_ios),
           color: Colors.black45,
           onPressed: (){},
           ),
           title: Text("ປະກັນໄພ",style: TextStyle(color: Colors.black45),),

         ),
         body: Container(
           padding: EdgeInsets.only(top: 50,right: 10,left: 10,bottom: 20),
           child: GridView.count(crossAxisCount: 3,
         children: [

           Card(
             margin: EdgeInsets.all(10),
             child: InkWell(
               onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>InsuraceDetail()));
               },
               splashColor: Colors.grey,
               child: Center(
                 child: Column(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     Icon(Icons.accessibility,size: 40,color:Colors.purple),
                     SizedBox(height: 10,),
                     Text('ປະກັນສຸຂະພາບ',style: TextStyle(fontSize: 14),),
                   ],
                 ),
               ),
             ),
           ),
            Card(
             margin: EdgeInsets.all(10),
             child: InkWell(
               onTap: (){},
               splashColor: Colors.grey,
               child: Center(
                 child: Column(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     Icon(Icons.bug_report,size: 40,color:Colors.purple),
                    
                     Text('ປະກັນພະຍາດຮ້າຍແຮງ',textAlign: TextAlign.center,style: TextStyle(fontSize: 14),),
                   ],
                 ),
               ),
             ),
           ),
           Card(
             margin: EdgeInsets.all(10),
             child: InkWell(
               onTap: (){},
               splashColor: Colors.grey,
               child: Center(
                 child: Column(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     Icon(Icons.sick,size: 40,color:Colors.purple),
                     SizedBox(height: 10,),
                     Center(child: Text('ປະກັນມະເຮັງ',style: TextStyle(fontSize: 14),)),
                   ],
                 ),
               ),
             ),
           ),
            Card(
             margin: EdgeInsets.all(10),
             child: InkWell(
               onTap: (){},
               splashColor: Colors.grey,
               child: Center(
                 child: Column(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     Icon(Icons.favorite,size: 40,color:Colors.purple),
                     SizedBox(height: 10,),
                     Center(child: Text('ປະກັນຊີວິດ',style: TextStyle(fontSize: 14),)),
                   ],
                 ),
               ),
             ),
           ),
           Card(
             margin: EdgeInsets.all(10),
             child: InkWell(
               onTap: (){},
               splashColor: Colors.grey,
               child: Center(
                 child: Column(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     Icon(Icons.admin_panel_settings,size: 40,color:Colors.purple),
                     SizedBox(height: 10,),
                     Center(child: Text('ປະກັນອູບັດຕີເຫດສ່ວນບຸກຄົນ',textAlign: TextAlign.center,style: TextStyle(fontSize: 14),)),
                   ],
                 ),
               ),
             ),
           ),
           Card(
             margin: EdgeInsets.all(10),
             child: InkWell(
               onTap: (){},
               splashColor: Colors.grey,
               child: Center(
                 child: Column(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     Icon(Icons.account_balance,size: 40,color:Colors.purple),
                     SizedBox(height: 10,),
                     Center(child: Text('ປະກັນສັບສີນ',style: TextStyle(fontSize: 14),)),
                   ],
                 ),
               ),
             ),
           ),
           Card(
             margin: EdgeInsets.all(10),
             child: InkWell(
               onTap: (){},
               splashColor: Colors.grey,
               child: Center(
                 child: Column(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     Icon(Icons.flight_takeoff,size: 40,color:Colors.purple),
                     SizedBox(height: 10,),
                     Center(child: Text('ປະກັນໄພເດີນທາງ',style: TextStyle(fontSize: 14),)),
                   ],
                 ),
               ),
             ),
           ),
           Card(
             margin: EdgeInsets.all(10),
             child: InkWell(
               onTap: (){},
               splashColor: Colors.grey,
               child: Center(
                 child: Column(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     Icon(Icons.waterfall_chart,size: 40,color:Colors.purple),
                     SizedBox(height: 10,),
                     Center(child: Text('ປະກັນຄຸມຄອງສີນເຊື່ອ',textAlign: TextAlign.center,style: TextStyle(fontSize: 14),)),
                   ],
                 ),
               ),
             ),
           ),
           Card(
             margin: EdgeInsets.all(10),
             child: InkWell(
               onTap: (){},
               splashColor: Colors.grey,
               child: Center(
                 child: Column(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     Icon(Icons.two_wheeler,size: 40,color:Colors.purple),
                     SizedBox(height: 10,),
                     Center(child: Text('ປະກັນໄພລົດຈັກ',style: TextStyle(fontSize: 14),)),
                   ],
                 ),
               ),
             ),
           ),
         
          
           
          
          
           
           
         
         ],),),
    );
  }
}


