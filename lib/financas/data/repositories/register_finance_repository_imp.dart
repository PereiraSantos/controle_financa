import 'package:controle_financa/financas/domain/entities/finance_entities.dart';
import 'package:controle_financa/financas/domain/repositories/register_finance_repository.dart';
import 'package:dartz/dartz.dart';

class RegisterFinanceRepositoryImpl implements RegisterFiananceRepository{
  @override
  Future<Either<Exception, bool>> registerFinace(FinanceEntity financeEntity) async {
    try{
        return const Right(true);
    }catch(e){
      return Left(Exception("erro"));
    }
  }

}