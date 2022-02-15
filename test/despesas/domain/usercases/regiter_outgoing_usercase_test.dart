import 'package:controle_financa/despesas/domain/entities/outgoing_entities.dart';
import 'package:controle_financa/despesas/domain/repositories/register_outgoing_reoisitoty.dart';
import 'package:controle_financa/despesas/domain/usercases/register_outgoing_usercase_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

class RegisterOutgoingrepositoryImpl implements RegisterOutgoingrepository{
  @override
  Future<Either<Exception, bool>> registerOutgoing(OutgoingEntity outgoingEntity) async {
    try {
      return const Right(true);
    } catch (e) {
      return Left(Exception("erro"));
    }
  }
  
}

main() {
  test("Espero que despesas não seja nula", () async {

    RegisterOutgoingUserCaseImpl userCase = RegisterOutgoingUserCaseImpl(RegisterOutgoingrepositoryImpl());

    OutgoingEntity outgoingEntity = 
    OutgoingEntity(
      id: 1,
      date: "10/10/2022",
      description: "mercado",
      idFinance: 1,
      value: 50.0);

  var result = await userCase.registerOutgoingUserCase(outgoingEntity);
  // ignore: prefer_typing_uninitialized_variables
  var outgoingEntityResult;

  result.fold((error) => null, (succes) => outgoingEntityResult = succes);

  expect(outgoingEntityResult, true);
  });
}