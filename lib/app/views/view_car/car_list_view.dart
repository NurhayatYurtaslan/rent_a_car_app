import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rent_a_car_app/app/bloc/car_bloc.dart';
import 'package:rent_a_car_app/app/bloc/car_state.dart';
import 'package:rent_a_car_app/core/widgets/car_card_widget.dart';


class CarListView extends StatelessWidget {
  const CarListView({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose Your Car'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: BlocBuilder<CarBloc, CarState>(
        builder: (context, state){
          if(state is CarsLoading){
            return const Center(child: CircularProgressIndicator(),);
          }
          else if(state is CarsLoaded) {
            return ListView.builder(
              itemCount: state.cars.length,
              itemBuilder: (context, index){
                return CarCardWidget(car: state.cars[index]);
              },
            );
          }
          else if(state is CarsError) {
            return Center(child: Text('error : ${state.message}'),);
          }
          return Container();
        },
      ),
    );
  }
}