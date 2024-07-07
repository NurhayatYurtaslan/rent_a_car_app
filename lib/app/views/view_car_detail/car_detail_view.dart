import 'package:flutter/material.dart';
import 'package:rent_a_car_app/app/views/view_maps_details/maps_details_view.dart';
import 'package:rent_a_car_app/core/widgets/avatar_widget.dart';
import 'package:rent_a_car_app/core/widgets/car_card_widget.dart';
import 'package:rent_a_car_app/core/widgets/more_car_list_widget.dart';
import 'package:rent_a_car_app/core/data/car_data.dart';

class CarDetailView extends StatefulWidget {
  final Car car;

  const CarDetailView({super.key, required this.car});

  @override
  State<CarDetailView> createState() => _CarDetailViewState();
}

class _CarDetailViewState extends State<CarDetailView>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 3), vsync: this);
    _animation = Tween<double>(begin: 1.0, end: 1.5).animate(_controller!)
      ..addListener(() {
        setState(() {});
      });
    _controller!.forward();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.info_outline),
            SizedBox(
              width: 2,
            ),
            Text(
              "Information",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          CarCardWidget(
            car: Car(
              model: widget.car.model,
              distance: widget.car.distance,
              fuelCapacity: widget.car.fuelCapacity,
              pricePerHour: widget.car.pricePerHour,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                const AvatarWidget(),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => MapsDetailsView(
                          car: Car(
                            model: 'Fortuner GR',
                            distance: 970,
                            fuelCapacity: 50,
                            pricePerHour: 45,
                          ), // Use the provided 'car' instance
                        ),
                      ),
                    );
                  },
                  child: Container(
                    height: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Transform.scale(
                        scale: _animation!.value,
                        alignment: Alignment.center,
                        child: Image.asset('assets/images/maps.png', fit: BoxFit.cover),
                      ),
                    ),
                  ),
                )),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                MoreCarListWidget(car: widget.car),
                const SizedBox(
                  height: 5,
                ),
                MoreCarListWidget(car: widget.car),
                const SizedBox(
                  height: 5,
                ),
                MoreCarListWidget(car: widget.car),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
