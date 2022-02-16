import 'package:controle_financa/despesas/data/datasources/get_outgoing_datasource.dart';
import 'package:controle_financa/despesas/data/dtos/outgoing_dto.dart';
import 'package:controle_financa/despesas/data/repositories/get_outgoing_repository_imp.dart';
import 'package:dartz/dartz.dart';
import 'package:controle_financa/despesas/domain/entities/outgoing_entities.dart';
import 'package:flutter_test/flutter_test.dart';

class GetOutgoingDataSourceImp implements GetOutgoingDataSource{

  var json = {
    "description": "Mercado",
    "value": 50.0,
    "date": "10/10/2022",
    "idFinance": 1,
  };

  @override
  Future<Either<Exception, OutgoingEntity>> getOutgoingDataSource() async {
    try{
      return Right(OutgloingDto.fromMap(json));
    } catch(e){
      return Left(Exception("erro"));
    }
  }
  
}

void main() {
  test("Epero que despesas não seja nulo", () async{
    GetOutoingRepositoryImp userCase = GetOutoingRepositoryImp(GetOutgoingDataSourceImp());

    var result = await userCase.getOutgoingRepository();
    var outgoingResult;

    result.fold((erro)=> null, (sucess)=> outgoingResult = sucess);

    expect(outgoingResult, isNotNull);

  });
}