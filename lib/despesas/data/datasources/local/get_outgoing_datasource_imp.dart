import 'package:controle_financa/despesas/data/datasources/get_outgoing_datasource.dart';
import 'package:dartz/dartz.dart';
import 'package:controle_financa/despesas/domain/entities/outgoing_entities.dart';

class GetOutgoingDatasourceImp implements GetOutgoingDataSource{
  @override
  Future<Either<Exception, OutgoingEntity>> getOutgoingDataSource() {
    // TODO: implement getOutgoingDataSource
    throw UnimplementedError();
  }

}