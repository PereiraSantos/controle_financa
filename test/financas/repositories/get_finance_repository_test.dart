import 'package:controle_financa/financas/data/datasources/get_finance_datasource.dart';
import 'package:controle_financa/financas/data/dtos/finance_dto.dart';
import 'package:controle_financa/financas/data/repositories/get_finance_repository_imp.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

class GetFinanceDataSorceImp implements GetFinanceDataSorce{

    var json = {
     'valor' : 60.0,
      'dataInicio': "10/10/2022",
      'dataFim': "10/10/2022",
      'valpePoupar': 20.0,
   };
  @override
  Future<Either<Exception, FinanceDto>> getFinanceDataSource() async {
    try{
      return Right(FinanceDto.formMap(json));
    } catch(e){
      return Left(Exception("erro"));
    }
     
  }
  
}

main() {
  test("Espera que financa nao seja nula", (){

    GetFinanceRepositoryImp getFinanceRepositoryImp = GetFinanceRepositoryImp(GetFinanceDataSorceImp());

    var result = getFinanceRepositoryImp.getFinace();

    expect(result, isNotNull);

  });
}