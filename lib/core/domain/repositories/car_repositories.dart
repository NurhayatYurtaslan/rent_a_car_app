import 'package:rent_a_car_app/core/data/models/car_data.dart';

abstract class CarRepositories {
  Future<List<Car>> fetchCars();
}
