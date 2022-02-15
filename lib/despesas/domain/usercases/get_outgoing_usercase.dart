import 'package:controle_financa/despesas/domain/entities/outgoing_entities.dart';
import 'package:dartz/dartz.dart';

abstract class GetOutgoingUserCase{
  Future<Either<Exception, OutgoingEntity>> getOutgoingUserCase();
}