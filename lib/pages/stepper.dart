import 'package:flutter/material.dart';
import 'package:insurace/pages/confirm.dart';
import 'package:insurace/pages/distand_select.dart';
import 'package:insurace/pages/insurace_detail.dart';
import 'package:im_stepper/main.dart';
import 'package:im_stepper/stepper.dart';
import 'package:insurace/pages/insurace_info.dart';
import 'package:insurace/pages/payment.dart';
import 'package:insurace/pages/select_insurace.dart';
import 'package:insurace/state/state_management.dart';

class SeleteInsurace extends StatefulWidget {
  
 final VoidCallback backButton;

  const SeleteInsurace({Key key, this.backButton}) : super(key: key);
  @override
  _SeleteInsuraceState createState() => _SeleteInsuraceState();
}

class _SeleteInsuraceState extends State<SeleteInsurace> {
  
   final formKey = GlobalKey<FormState>();
  int activeStepper = 0;
  int upperBound = 3;
  TextEditingController startDateController;
  TextEditingController endDateController;
 // int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation:0,
        centerTitle: true,
        leading: IconButton(
          color: Colors.black45,
          icon: Icon(Icons.arrow_back_ios), onPressed:(){
           if(activeStepper > 0){
              setState(() {
                          activeStepper--;
                        });
            }
          }),
        title: Text('ປະກັນສຸຂະພາບ',style: TextStyle(color: Colors.black54),),
      ),
      body: 
      Column(
        children: [
          Container(
            color: Colors.grey[300],
            child: NumberStepper(
             
                  direction: Axis.horizontal,
                  enableNextPreviousButtons: false,
                  enableStepTapping: false,
                  numbers: [1,2,3,4],
                  lineColor: Colors.purple,
                  stepRadius: 20,
                   lineDotRadius: 1,
                   lineLength: size.width / 9,
                  stepColor: Colors.grey,
                  activeStepColor: Colors.purple,
                  numberStyle: TextStyle(color: Colors.white),
              activeStep: activeStepper,
              onStepReached: (index){
                setState(() {
                                activeStepper  = index;
                              });
              },
            ),
          ),
          header(),
          bodyStep(),
          
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
            // preButton(),
             // nextButton(),
          ],
            ),
          )
        ],
      )
      
    );
  }

  header() {
    return Container(
      child: Row(
       mainAxisAlignment: MainAxisAlignment.start,
        children: [
           Padding(
             padding: const EdgeInsets.only(left: 20,top: 30),
             child: Text(headerText(),),
           )
        ],
      ),
    );
  }

  String headerText() {
    switch(activeStepper){
      case 0: 
        return '';
      case 1: 
        return '';
         case 2: 
        return '';
         case 3: 
        return '';
        
        default:
         return '';
    }
  }

Widget  nextButton() {
    return Padding(
      padding: const EdgeInsets.only(right: 30,),
      child: SizedBox(
        height: 40,
        width: 120,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.purple,
            
          ),
          onPressed: (){
            if(activeStepper < upperBound){
              setState(() {
                          activeStepper++;
                        });
            }
          }, child: Text('ຕໍ່ໄປ')),
      ),
    );
  }

Widget  preButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 30,),
      child: SizedBox(
        height: 40,
        width: 120,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.purple,
            
          ),
          onPressed: (){
            if(activeStepper > 0){
              setState(() {
                          activeStepper--;
                        });
            }
          }, child: Text('ກັບຄືນ')),
      ),
    );
  }

Widget  bodyStep() {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),

      ),
      child: bodyStepper(),
    );
  }

 Widget bodyStepper() {
    switch(activeStepper){
      case 0:
       return SizedBox(
         width: MediaQuery.of(context).size.width -20,
         height: MediaQuery.of(context).size.height * 0.68,
         
         
         child:  SelectInsurace(
           onYourSelfTap: (){
             setState(() {
                            activeStepper++;
                          });
           },
           onFamilyTap: (){
             setState(() {
                            activeStepper++;
                          });
           },
         ),);
         case 1:
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.68,
          width: MediaQuery.of(context).size.width - 20,
          child: Form(
            key: formKey,
            child: CustomInfo(
              nextButton: () {
                if (formKey.currentState.validate()) {
                  if (activeStepper < upperBound) {
                    setState(() {
                      activeStepper++;
                    });
                  }
                }
              },
            )),
          
        );
        case 2:
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.68,
          width: MediaQuery.of(context).size.width - 20,
          child: Form(
            key: formKey,
            child: DistandInsurace(
             
              nextButton: () {
                if (formKey.currentState.validate()) {
                  if (activeStepper < upperBound) {
                    setState(() {
                      activeStepper++;
                    });
                  }
                }
              },
            )),
         
        );
        case 3:
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.68,
          width: MediaQuery.of(context).size.width - 20,
          child: ConfirmPage(),
         
        );
        default:
        return Container();

    }
  }

  

 
    
    

          
 }



