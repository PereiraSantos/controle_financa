import 'package:controle_financa/financas/domain/entities/finance_entities.dart';
import 'package:controle_financa/financas/domain/repositories/register_finance_repository.dart';
import 'package:controle_financa/financas/domain/usercases/register_finance_usercase_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

class RegisterFinanceRepositoryImpl implements RegisterFiananceRepository{
  @override
  Future<Either<Exception, bool>> registerFinace(FinanceEntity financeEntity) async {
    try{
        return const Right(true);
    }catch(e){
      return Left(Exception("Error"));
    }
  }

}

main() {
  test("Epero que salve a financa", () async {
      RegisterFinanceUsercaseImpl registerFinanceImpl = RegisterFinanceUsercaseImpl(RegisterFinanceRepositoryImpl());

      FinanceEntity financeEntity = FinanceEntity(
        id: 1,
        dateStart: "10/01/2022",
        dateFinish: "11/02/2022",
        value: 500,
        valueSave: 20,
      );

      var result = await registerFinanceImpl.registerFinance(financeEntity);
      // ignore: prefer_typing_uninitialized_variables
      var resultRegister;

      result.fold((erro) => null, (success) => resultRegister = success);

      expect(resultRegister, true);
  });
}