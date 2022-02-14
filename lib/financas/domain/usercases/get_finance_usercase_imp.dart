
import 'package:controle_financa/financas/domain/entities/finance_entities.dart';
import 'package:controle_financa/financas/domain/repositories/get_finance_repository.dart';
import 'package:controle_financa/financas/domain/usercases/finance_usercases/get_finance_usercase.dart';
import 'package:dartz/dartz.dart';

class GetFinanceUserCaseImp implements GetFinanceUserCase{

  final GetFinanceRepository _getFinanceRepository;

  GetFinanceUserCaseImp(this._getFinanceRepository);
  
  @override
  Future<Either<Exception, FinanceEntity>> getfinance() async {
    return await _getFinanceRepository.getFinace();
  }

}