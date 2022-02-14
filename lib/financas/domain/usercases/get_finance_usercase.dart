
import 'package:controle_financa/financas/domain/entities/finance_entities.dart';
import 'package:dartz/dartz.dart';

abstract class  GetFinanceUserCase{
  Future<Either<Exception, FinanceEntity>> getfinance();
}