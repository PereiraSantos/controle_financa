import 'package:controle_financa/financas/domain/entities/finance_entities.dart';

class FinanceDto extends FinanceEntity{
  double? valor;
  String? dataInicio;
  String? dataFim;
  double? valpePoupar;

  FinanceDto({
    this.valor, 
    this.dataInicio, 
    this.dataFim, 
    this.valpePoupar
  }) : super(
    id: null, 
    value: valor,
    dateStart: dataInicio, 
    dateFinish: dataFim,
    valueSave: valpePoupar
  );

  Map toMap(){
    return {
      'valor' : valor,
      'dataInicio': dataInicio,
      'dataFim': dataFim,
      'valpePoupar': valpePoupar,
    };
  }

  static FinanceDto formMap(Map map){
    return FinanceDto(
     valor: map['valor'] ,
     dataInicio: map['dataInicio'],
     dataFim: map['dataFim'],
     valpePoupar: map['valpePoupar'],
    );
  }

}