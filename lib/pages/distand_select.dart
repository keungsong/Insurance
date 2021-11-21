import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';
import 'package:insurace/pages/confirm.dart';
import 'package:insurace/pages/insurace_info.dart';

class DistandInsurace extends StatefulWidget {
  

  final VoidCallback nextButton;
   final VoidCallback startDateButton;
    final VoidCallback endDateButton;
  const DistandInsurace({Key key, this.nextButton,this.endDateButton,this.startDateButton}) : super(key: key);

  @override
  _DistandInsuraceState createState() => _DistandInsuraceState();
}

class _DistandInsuraceState extends State<DistandInsurace> {

  
   DateTime date;
   DateTime enddate;
   String getDateStarText(){
      if(date == null){
        return '                  ';
      }else{
        return '${date.day}/${date.month}/${date.year}';
      }
    }
    String getDateEndText(){
      if(enddate == null){
        return '                  ';
      }else{
        return '${enddate.day}/${enddate.month}/${enddate.year}';
      }
    }
    
  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
       
      body: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            
             Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('ເລືອກໄລຍະປະກັນໄພ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              
            ),
             SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right: 70,left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('ວັນທີຊື້ປະກັນໄພ*',style: TextStyle(color: Colors.black54),),
                  Text('ວັນທີສິນສຸດປະກັນ*',style: TextStyle(color: Colors.black54),),
                  
                ],
              ),
              
            ),
            SizedBox(height: 6,),
            Padding(
              padding: const EdgeInsets.only(right: 20,left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 /* TextButton(
                    
                    onPressed: ()=>pickedDate(context), child: Text(getText())),
                    TextButton(
                    
                    onPressed: ()=>pickedDate(context), child: Text(getText())),*/

                 SizedBox(
                    width: 170,
                    height: 50,
                    child: ElevatedButton.icon(onPressed: ()=>pickedStartDate(context),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white
                    ),
                    icon: Icon(Icons.calendar_today,color: Colors.black54,), label: Padding(
                      padding: const EdgeInsets.only(right: 25,),
                      child: Text(getDateStarText(),style: TextStyle(color: Colors.black45),),
                    ),
                    ),
                  ),

                        SizedBox(
                          width: 170,
                          height: 50,
                          child: ElevatedButton.icon(onPressed: ()=>pickedEndDate(context),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white
                    ),
                   icon: Icon(Icons.calendar_today,color: Colors.black54,), label: Padding(
                     padding: const EdgeInsets.only(right: 20),
                     child: Text(getDateEndText(),style: TextStyle(color: Colors.black45),),
                   ),
                    ),
                        ),
                ],
              ),
            ),
             SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.only(right: 20,left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('ຄ່າລົງທະບຽນ',style: TextStyle(color: Colors.black54),),
                  Text('20,000 KIP',style: TextStyle(color: Colors.black54),),
                  
                ],
              ),
              
            ),
             SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 20,left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('ລວມທັງໝົດ',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),),
                  Text('140,000 KIP',style: TextStyle(color: Colors.black54),),
                  
                ],
              ),
              
            ),
            SizedBox(height: 250,),
                Padding(
                  padding: const EdgeInsets.only(left: 220),
                  child: SizedBox(
                    width: 150,
                    height: 45,
                    child: RaisedButton(
                      color: Colors.purple,
                      onPressed: (){
                        if(widget.nextButton != null){
                          widget.nextButton();
                        }
                      }, child: Text('ຕໍ່ໄປ',style: TextStyle(color: Colors.white),)),
                  ),
                )
        ],
      ),
    );
  }

 Future pickedStartDate(BuildContext context) async{
   final initialDate = DateTime.now();
   final startDate = await showDatePicker(context: context, initialDate: initialDate, firstDate: DateTime(DateTime.now().year - 5), 
   lastDate: DateTime(DateTime.now().year +5),);
   if(startDate == null) return;
   

   setState(() {
        date= startDate;
      });
 }

 Future pickedEndDate(BuildContext context) async{
   final initialDate = DateTime.now();
   final endDate = await showDatePicker(context: context, initialDate: initialDate, firstDate: DateTime(DateTime.now().year - 5), 
   lastDate: DateTime(DateTime.now().year +5),);
   if(endDate == null) return;
   

   setState(() {
        enddate= endDate;
      });
 }

 
}