import 'package:controle_financa/despesas/domain/entities/outgoing_entities.dart';
import 'package:controle_financa/despesas/domain/repositories/get_outgoing_repository.dart';
import 'package:controle_financa/despesas/domain/usercases/get_outgoing_usercase.dart';
import 'package:dartz/dartz.dart';

class GetOutgoingUserCaseImp implements GetOutgoingUserCase{

  final GetOutgoingRepository _getOutgoingRepository;

  GetOutgoingUserCaseImp(this._getOutgoingRepository);

  @override
  Future<Either<Exception, OutgoingEntity>> getOutgoingUserCase() {
    return _getOutgoingRepository.getOutgoingRepository();
  }

}