import 'package:controle_financa/financas/domain/entities/finance_entities.dart';
import 'package:dartz/dartz.dart';

abstract class RegisterFinancaLocaldataSource{
  Future<Either<Exception, bool>> registerFinancadataSource(FinanceEntity financeEntity);
}