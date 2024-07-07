import 'package:bloc/bloc.dart';
import 'package:rent_a_car_app/app/bloc/car_event.dart';
import 'package:rent_a_car_app/app/bloc/car_state.dart';
import 'package:rent_a_car_app/core/domain/usecases/get_cars.dart';

class CarBloc extends Bloc<CarEvent, CarState> {
  final GetCars getCars;
  CarBloc({required this.getCars}) : super(CarsLoading()) {
    on<LoadCars>((event, emit) async {
      emit(CarsLoading());
      try {
        final cars = await getCars.call();
        emit(CarsLoaded(cars));
      } catch (e) {
        emit(CarsError(e.toString()));
      }
    });
  }
}
