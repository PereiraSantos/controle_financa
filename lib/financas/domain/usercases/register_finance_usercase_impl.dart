import 'package:controle_financa/financas/domain/entities/finance_entities.dart';
import 'package:controle_financa/financas/domain/repositories/register_finance_repository.dart';
import 'package:controle_financa/financas/domain/usercases/register_finance_usercase.dart';
import 'package:dartz/dartz.dart';

class RegisterFinanceUsercaseImpl implements RegisterFinanceUserCase{

  final RegisterFiananceRepository _registerFiananceRepository;

  RegisterFinanceUsercaseImpl(this._registerFiananceRepository);
  
  @override
  Future<Either<Exception, bool>> registerFinance(FinanceEntity financeEntity) async {
    return await _registerFiananceRepository.registerFinace(financeEntity);
  }


}