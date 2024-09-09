import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CostomButtom extends StatefulWidget {
  const CostomButtom({super.key});

  @override
  State<CostomButtom> createState() => _CostomButtomState();
}

class _CostomButtomState extends State<CostomButtom> {
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){},
      child: Container(
        alignment: Alignment.center,
        child: Text('Cleck  ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),),

        height: 66,
        width: 144,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(33),
        ),
      ),
    );
  }
}
