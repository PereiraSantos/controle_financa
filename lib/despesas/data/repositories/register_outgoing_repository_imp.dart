import 'package:controle_financa/despesas/domain/entities/outgoing_entities.dart';
import 'package:controle_financa/despesas/domain/repositories/register_outgoing_reoisitoty.dart';
import 'package:dartz/dartz.dart';

class RegisterOutgoingRepositoryImp implements RegisterOutgoingrepository{
  @override
  Future<Either<Exception, bool>> registerOutgoing(OutgoingEntity outgoingEntity) async {
    try {
      return  const Right(true);
    } catch (e) {
      return Left(Exception("erro"));
    }
  }

}