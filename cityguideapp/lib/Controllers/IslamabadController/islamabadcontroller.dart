import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class IslamabadController extends GetxController {
  static final CameraPosition kGoogLePlex = CameraPosition(
    target: LatLng(33.7182, 73.0714),
    zoom: 14,
  );

  List<Marker> _marker = [];
  List<Marker> get markers => _list;

  List<Marker> _list = const [
    Marker(
      markerId: MarkerId("1"),
      position: LatLng(24.9345872, 67.099281),
      infoWindow: InfoWindow(title: "My Current position"),
    ),
    Marker(
      markerId: MarkerId("2"),
      position: LatLng(24.9056, 67.0822),
      infoWindow: InfoWindow(title: "Saddar"),
    ),
    Marker(
      markerId: MarkerId("3"),
      position: LatLng(24.9056, 67.0822),
      infoWindow: InfoWindow(title: "defence"),
    ),
    Marker(
      markerId: MarkerId("4"),
      position: LatLng(24.9056, 67.0822),
      infoWindow: InfoWindow(title: "Tariq Road"),
    ),
  ];
}
