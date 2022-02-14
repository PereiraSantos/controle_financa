
import 'package:controle_financa/financas/data/datasources/get_financa_datasource.dart/get_finance_datasource.dart';
import 'package:controle_financa/financas/domain/entities/finance_entities.dart';
import 'package:controle_financa/financas/domain/repositories/get_finance_repository.dart';
import 'package:dartz/dartz.dart';

class GetFinanceRepositoryImp implements GetFinanceRepository{

  final GetFinanceDataSorce _getFinanceDataSorce;

  GetFinanceRepositoryImp(this._getFinanceDataSorce);

  @override
  Future<Either<Exception, FinanceEntity>> getFinace() async {
   return await _getFinanceDataSorce.getFinanceDataSource();
  }
  
}