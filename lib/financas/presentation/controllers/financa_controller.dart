import 'package:controle_financa/financas/domain/entities/finance_entities.dart';
import 'package:controle_financa/financas/domain/usercases/finance_usercases/get_finance_usercase.dart';
import 'package:controle_financa/financas/domain/usercases/register_finance_usercase.dart';

class FinancaController {

  final GetFinanceUserCase _getFinanceUserCase;
  final RegisterFinanceUserCase _registerFinanceUserCase;

  FinancaController(this._getFinanceUserCase, this._registerFinanceUserCase){
    getFinancaControle();
  }

  FinanceEntity? financeEntity;

  Future<FinanceEntity> getFinancaControle() async {
    var result = await _getFinanceUserCase.getfinance();

    result.fold(
      // ignore: avoid_print
      (erro) => print("erro".toString()), 
      (sucess) => financeEntity = sucess);

    return financeEntity!;
  } 
  
  
  saveFinace(){
    _registerFinanceUserCase.registerFinance(FinanceEntity());
  }
}