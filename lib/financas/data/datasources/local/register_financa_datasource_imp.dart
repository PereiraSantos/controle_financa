import 'package:controle_financa/core/provider/database.dart';
import 'package:controle_financa/financas/data/datasources/register_financa_local_datasource.dart';
import 'package:dartz/dartz.dart';
import 'package:controle_financa/financas/domain/entities/finance_entities.dart';
import 'package:sqflite/sqflite.dart';

class RegisterFinancaLocaldataSourceImp implements RegisterFinancaLocaldataSource{

  DatabaseProvider database = DatabaseProvider();

  @override
  Future<Either<Exception, bool>> registerFinancadataSource(FinanceEntity financeEntity) async {
    final db = await database.init();
    try{
      await db.insert(
        'financas',
        financeEntity,
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
      return const Right(true);
    } catch (e){
      return Left(Exception("erro"));
    }
  }

}