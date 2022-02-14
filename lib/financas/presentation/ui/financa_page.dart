import 'package:controle_financa/financas/domain/entities/finance_entities.dart';
import 'package:controle_financa/financas/presentation/controllers/financa_controller.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

// ignore: must_be_immutable
class FinancePage extends StatelessWidget {
  FinancePage({ Key? key }) : super(key: key);

  FinancaController controller = GetIt.I.get<FinancaController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
      
        child: FutureBuilder(
          future: controller.getFinancaControle(),
          builder: (context, AsyncSnapshot<FinanceEntity> snapshot) {
            if(snapshot.data != null){
               return Text('${snapshot.data!.value}');
            }else{
            return const Text("vazio");
          }
         
        }))
        
    );
  }
}