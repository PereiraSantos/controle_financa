import 'package:controle_financa/financas/data/datasources/get_finance_datasource.dart';
import 'package:controle_financa/financas/domain/entities/finance_entities.dart';
import 'package:dartz/dartz.dart';

class GetFinanceLocalDataSourceImp implements GetFinanceDataSorce{

  var json = {
     'valor' : 60.0,
      'dataInicio': "10/10/2022",
      'dataFim': "10/10/2022",
      'valpePoupar': 20.0,
   };

   
  @override
  Future<Either<Exception, FinanceEntity>> getFinanceDataSource() async {
    try{
      return Right(FinanceEntity(
        id: 1,
        dateStart: "10/10/2022",
        dateFinish: "10/10/2022",
        value: 50.0,
        valueSave: 20.0
      ));
    } catch (e){
      return Left(Exception("erro"));
    }
    
   //return FinanceEntity.formMap(json);
  }
}