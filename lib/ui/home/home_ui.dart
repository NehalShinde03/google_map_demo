import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goole_map_demo/ui/home/home_cubit.dart';
import 'package:goole_map_demo/ui/home/home_state.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  static const String routeName = '/home_ui';
  static Widget builder(BuildContext context) => BlocProvider(
      create: (context) => HomeCubit(HomeState()),
      child: const HomeUi(),
  );

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {

  Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _cameraPosition = CameraPosition(
      target: LatLng(21.071425, 72.878488),
      zoom: 14.476
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: _cameraPosition,
        // mapType: MapType.satellite,
        myLocationButtonEnabled: true,
        myLocationEnabled: true,
        onMapCreated: (GoogleMapController controller){
          _controller.complete(controller);
        },
      ),
    );
  }
}
