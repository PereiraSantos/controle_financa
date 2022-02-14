import 'package:controle_financa/financas/domain/entities/finance_entities.dart';
import 'package:flutter_test/flutter_test.dart';


main() {

  test("Espero que não seja nullo", (){
    FinanceEntity financeEntity = FinanceEntity(
      id: 1,
      dateStart: "11/01/2022",
      dateFinish: "11/02/2022",
      value: 500,
      valueSave: 10,
    );

    expect(financeEntity, isNotNull);
  });
}