import 'package:rent_a_car_app/core/data/models/car_data.dart';
import 'package:rent_a_car_app/core/domain/repositories/car_repositories.dart';

class GetCars {
  final CarRepositories repository;

  GetCars(this.repository);

  Future<List<Car>> call() async {
    return await repository.fetchCars();
  }
}
