import 'package:controle_financa/despesas/domain/entities/outgoing_entities.dart';
import 'package:dartz/dartz.dart';

abstract class GetOutgoingRepository{
  Future<Either<Exception, OutgoingEntity>> getOutgoingRepository();
}