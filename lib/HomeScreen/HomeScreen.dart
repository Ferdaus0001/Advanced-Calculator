import 'package:flutter/material.dart';
import 'package:water_tracker_app/CostomWidget/CostomButtom.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _FastNumber = TextEditingController();
  final TextEditingController _SecondNumber = TextEditingController();
  double _Regist = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wather Tracker ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
         centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1,

      ),

       body: Padding(
         padding: const EdgeInsets.all(21.0),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             TextFormField(
               controller: _FastNumber,

               keyboardType: TextInputType.number,
               decoration: InputDecoration(
                 hintText: 'Enter Fast Number Number ',
                 labelText: 'Fast Number ',

                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(22),
                 )
               ),
             ),
             SizedBox(height: 15,),

             TextFormField(
               controller: _SecondNumber,
               keyboardType: TextInputType.number,
               decoration: InputDecoration(
                   hintText: ' Enter Second  Number ',
                   labelText: 'Second Number ',

                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(22),
                   )
               ),
             ),
             SizedBox(height: 15,),
             Row(
               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
               children: [

                 TextButton(onPressed: (){_AddNumber();}, child: CircleAvatar(child: Icon(Icons.add))),
                 TextButton(onPressed: (){ _minasNumber();}, child: CircleAvatar(child: Icon(Icons.remove))),
                 TextButton(onPressed: (){_Diveton();}, child:  CircleAvatar(child: Text('\*',style: TextStyle(fontSize: 22),))),
                 TextButton(onPressed: (){_Miltetion();}, child:  CircleAvatar(child: Text('\/',style: TextStyle(fontSize: 22),))),

               ],
             ),
             SizedBox(height: 21,),
 ElevatedButton(onPressed: ( ){
   _AddNumber();
 }, child: Text('Regist $_Regist',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
               SizedBox(height: 44,),
             CostomButtom()
           ],
         ),
       ),
    );
  }
  void _AddNumber (){
   double  AddFastNumber = double.tryParse(_FastNumber.text)?? 0;
   double  AddSecondNumber = double.tryParse(_SecondNumber.text)?? 0;
    _Regist =  AddFastNumber +AddSecondNumber ;

    setState(() {

    });
  }
  void _minasNumber (){
   double  AddFastNumber = double.tryParse(_FastNumber.text)?? 0;
   double  AddSecondNumber = double.tryParse(_SecondNumber.text)?? 0;
    _Regist =  AddFastNumber - AddSecondNumber ;

    setState(() {

    });
  }
  void  _Diveton  (){
    double  AddFastNumber = double.tryParse(_FastNumber.text)?? 0;
    double  AddSecondNumber = double.tryParse(_SecondNumber.text)?? 0;
    _Regist =  AddFastNumber * AddSecondNumber ;

    setState(() {

    });
  }

  void _Miltetion  (){
    double  AddFastNumber = double.tryParse(_FastNumber.text)?? 0;
    double  AddSecondNumber = double.tryParse(_SecondNumber.text)?? 0;
    _Regist =  AddFastNumber / AddSecondNumber ;

    setState(() {

    });
  }


}
