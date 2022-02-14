
import 'package:controle_financa/financas/data/datasources/get_financa_datasource.dart/get_finance_datasource.dart';
import 'package:controle_financa/financas/data/datasources/local/get_finance_local_datasource_imp.dart';
import 'package:controle_financa/financas/data/repositories/get_finance_repository_imp.dart';
import 'package:controle_financa/financas/data/repositories/register_finance_repository_imp.dart';
import 'package:controle_financa/financas/domain/repositories/get_finance_repository.dart';
import 'package:controle_financa/financas/domain/repositories/register_finance_repository.dart';
import 'package:controle_financa/financas/domain/usercases/finance_usercases/get_finance_usercase.dart';
import 'package:controle_financa/financas/domain/usercases/finance_usercases/get_finance_usercase_imp.dart';
import 'package:controle_financa/financas/domain/usercases/register_finance_usercase.dart';
import 'package:controle_financa/financas/domain/usercases/register_finance_usercase_impl.dart';
import 'package:controle_financa/financas/presentation/controllers/financa_controller.dart';
import 'package:get_it/get_it.dart';

class Inject{
  
  static void init(){
    GetIt getIt = GetIt.instance;

    //datasource
    getIt.registerLazySingleton<GetFinanceDataSorce>(
      () => GetFinanceLocalDataSourceImp()
    );

    //repository
    getIt.registerLazySingleton<GetFinanceRepository>(
      () => GetFinanceRepositoryImp(getIt())
    );
    getIt.registerLazySingleton<RegisterFiananceRepository>(
      () => RegisterFinanceRepositoryImpl()
    );

    //usercases
    getIt.registerLazySingleton<GetFinanceUserCase>(
      () => GetFinanceUserCaseImp(getIt())
    );

    getIt.registerLazySingleton<RegisterFinanceUserCase>(
      () => RegisterFinanceUsercaseImpl(getIt())
    );

    //controller
    getIt.registerFactory<FinancaController>(
      () => FinancaController(getIt(), getIt())
    );
  }
}
