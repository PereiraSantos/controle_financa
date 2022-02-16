import 'package:controle_financa/financas/data/datasources/register_financa_local_datasource.dart';
import 'package:controle_financa/financas/domain/entities/finance_entities.dart';
import 'package:controle_financa/financas/domain/repositories/register_finance_repository.dart';
import 'package:dartz/dartz.dart';

class RegisterFinanceRepositoryImpl implements RegisterFiananceRepository{

  final RegisterFinancaLocaldataSource _registerFinancaLocaldataSource;

  RegisterFinanceRepositoryImpl(this._registerFinancaLocaldataSource);
  @override
  Future<Either<Exception, bool>> registerFinace(FinanceEntity financeEntity) async {
    return _registerFinancaLocaldataSource.registerFinancadataSource(financeEntity);
  }

}