import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';
import 'package:geolocator/geolocator.dart';

class GlobalController extends GetxController{
  static GlobalController get instance => Get.find();

  final isLoadingCurrentLocation = true.obs;
  final latitude = 0.0.obs;
  final longitude = 0.0.obs;
  final locality = "".obs;
  final subLocality = "".obs;

  @override
  void onInit() async {
    // TODO: implement onInit
    if(isLoadingCurrentLocation.isTrue){
      await _determinePosition();
      isLoadingCurrentLocation(false);
    }
    super.onInit();
  }

  Future<void> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    await Geolocator.getCurrentPosition().then((value) async{
      latitude.value = value.latitude;
      latitude.value = value.longitude;

      List<Placemark> address = await placemarkFromCoordinates(value.latitude, value.longitude);
      locality.value = address[0].locality ?? "N/A";
      subLocality.value = address[0].subLocality ?? "N/A";
    });
  }
}