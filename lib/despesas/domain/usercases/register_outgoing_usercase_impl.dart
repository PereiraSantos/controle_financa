import 'package:controle_financa/despesas/domain/entities/outgoing_entities.dart';
import 'package:controle_financa/despesas/domain/repositories/register_outgoing_reoisitoty.dart';
import 'package:controle_financa/despesas/domain/usercases/register_outgoing_usercase.dart';

import 'package:dartz/dartz.dart';

class RegisterOutgoingUserCaseImpl implements RegisterOutgoingUserCase{

  final RegisterOutgoingrepository _registerOutgoingrepository;
  
  RegisterOutgoingUserCaseImpl(this._registerOutgoingrepository);

  @override
  Future<Either<Exception, bool>> registerOutgoingUserCase(OutgoingEntity outgoingEntity) {
    return _registerOutgoingrepository.registerOutgoing(outgoingEntity);
  }
  

}