import 'package:controle_financa/despesas/domain/entities/outgoing_entities.dart';
import 'package:dartz/dartz.dart';

abstract class RegisterOutgoingrepository{
  Future<Either<Exception, bool>> registerOutgoing(OutgoingEntity outgoingEntity);
}