import 'package:controle_financa/financas/domain/entities/finance_entities.dart';
import 'package:dartz/dartz.dart';

abstract class RegisterFinanceUserCase{
   Future<Either<Exception, bool>>registerFinance(FinanceEntity financeEntity);
}