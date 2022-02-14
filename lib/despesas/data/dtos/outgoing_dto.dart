import 'package:controle_financa/financas/domain/entities/outgoing_entities.dart';

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
}