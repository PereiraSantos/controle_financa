import 'package:controle_financa/despesas/domain/entities/outgoing_entities.dart';
import 'package:dartz/dartz.dart';

abstract class RegisterOutgoingUserCase{
  Future<Either<Exception, bool>> registerOutgoingUserCase(OutgoingEntity outgoingEntity);
}