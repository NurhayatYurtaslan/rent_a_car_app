import 'package:rent_a_car_app/core/data/models/car_data.dart';

abstract class CarState {}

class CarsLoading extends CarState {}

class CarsLoaded extends CarState {
  final List<Car> cars;
  CarsLoaded(this.cars);
}

class CarsError extends CarState {
  final String message;
  CarsError(this.message);
}
