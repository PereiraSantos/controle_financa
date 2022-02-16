

import 'package:controle_financa/despesas/domain/entities/outgoing_entities.dart';

class OutgloingDto extends OutgoingEntity{

  String? descriptionOutgoing;
  double? valueOutgoing;
  String? dateOutgoing;
  int? codFinance;

  OutgloingDto({
    this.descriptionOutgoing, 
    this.valueOutgoing,
    this.dateOutgoing,
    this.codFinance
    }) : super(
      date: dateOutgoing, 
      description: descriptionOutgoing, 
      idFinance: codFinance, 
      value: valueOutgoing
    );

  Map toMap(){
    return {
      "descriptionOutgoing": descriptionOutgoing,
      "valueOutgoing": valueOutgoing,
      "codFinance": codFinance,
      "dateOutgoing": dateOutgoing,
    };
  }

  static OutgloingDto fromMap(Map map){
    return OutgloingDto(
      descriptionOutgoing: map['descriptionOutgoing'],
      dateOutgoing: map['dateOutgoing'],
      valueOutgoing: map['valueOutgoing'],
      codFinance: map['codFinance']
    );
  }
}