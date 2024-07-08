import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:rent_a_car_app/app/bloc/car_bloc.dart';
import 'package:rent_a_car_app/core/data/datasources/firebase_car_data_source.dart';
import 'package:rent_a_car_app/core/data/repositories/car_repository_impl.dart';
import 'package:rent_a_car_app/core/domain/repositories/car_repositories.dart';
import 'package:rent_a_car_app/core/domain/usecases/get_cars.dart';

GetIt getIt = GetIt.instance;

void initInjection() {
  try {
    getIt.registerLazySingleton(() => FirebaseFirestore.instance);

    getIt.registerLazySingleton<FirebaseCarDataSource>(
        () => FirebaseCarDataSource(firestore: getIt<FirebaseFirestore>()));

    getIt.registerLazySingleton<CarRepositories>(
        () => CarRepositoryImpl(getIt<FirebaseCarDataSource>()));

    getIt.registerLazySingleton<GetCars>(
        () => GetCars(getIt<CarRepositories>()));
    getIt.registerFactory(() => CarBloc(getCars: getIt<GetCars>()));
  } catch (e) {
    rethrow;
  }
}
