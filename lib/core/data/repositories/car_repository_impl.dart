import 'package:rent_a_car_app/core/data/datasources/firebase_car_data_source.dart';
import 'package:rent_a_car_app/core/data/models/car_data.dart';
import 'package:rent_a_car_app/core/domain/repositories/car_repositories.dart';

class CarRepositoryImpl implements CarRepositories {
  final FirebaseCarDataSource dataSource;

  CarRepositoryImpl(this.dataSource);

  @override
  Future<List<Car>> fetchCars() {
    return dataSource.getCars();
  }
}
