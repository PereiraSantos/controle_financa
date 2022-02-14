import 'package:controle_financa/financas/data/dtos/finance_dto.dart';
import 'package:controle_financa/financas/domain/entities/finance_entities.dart';
import 'package:controle_financa/financas/domain/repositories/get_finance_repository.dart';
import 'package:controle_financa/financas/domain/usercases/finance_usercases/get_finance_usercase_imp.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

class GetFinanceRepositoryImp implements GetFinanceRepository{
  @override
  Future<Either<Exception, FinanceEntity>> getFinace() async {

   var json = {
     'valor' : 60.0,
      'dataInicio': "10/10/2022",
      'dataFim': "10/10/2022",
      'valpePoupar': 20.0,
   };
    try{
      return Right(FinanceDto.formMap(json));
    } catch (e) {
      return Left(Exception("erro"));
    }
   
  }
  
}

void main() {
  test("Espero uma financa",() async {

    GetFinanceUserCaseImp getFinanceUserCaseImp = GetFinanceUserCaseImp(GetFinanceRepositoryImp());

    var result = await getFinanceUserCaseImp.getfinance();

    late FinanceEntity resultFinace;

    result.fold((erro) => null, (succes) => resultFinace = succes);

    expect(resultFinace, isNotNull);

  });
}