import 'package:controle_financa/despesas/data/datasources/get_outgoing_datasource.dart';
import 'package:controle_financa/despesas/domain/entities/outgoing_entities.dart';
import 'package:controle_financa/despesas/domain/repositories/get_outgoing_repository.dart';
import 'package:dartz/dartz.dart';

class GetOutoingRepositoryImp implements GetOutgoingRepository{

  final GetOutgoingDataSource _getOutgoingDataSource;

  GetOutoingRepositoryImp(this._getOutgoingDataSource);

  @override
  Future<Either<Exception, OutgoingEntity>> getOutgoingRepository() async {
    return await _getOutgoingDataSource.getOutgoingDataSource();
  }

}