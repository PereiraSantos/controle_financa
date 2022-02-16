import 'package:controle_financa/despesas/data/datasources/get_outgoing_datasource.dart';
import 'package:dartz/dartz.dart';
import 'package:controle_financa/despesas/domain/entities/outgoing_entities.dart';

class GetOutgoingDatasourceImp implements GetOutgoingDataSource{
  @override
  Future<Either<Exception, OutgoingEntity>> getOutgoingDataSource() async{
    try{
      return Right(OutgoingEntity(
        date: "10/10/2022",
        description: "Mercado",
        id: 1,
        idFinance: 1,
        value: 50.00));
    } catch (e){
      return Left(Exception("erro"));
    }
  }
}