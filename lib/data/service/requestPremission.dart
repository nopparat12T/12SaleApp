import 'package:permission_handler/permission_handler.dart';

Future<void> requestNotificationPermission() async {
  if (await Permission.notification.isDenied) {
    final status = await Permission.notification.request();
    if (status.isGranted) {
      print("Notification permission granted!");
    } else {
      print("Notification permission denied!");
    }
  } else {
    print("Notification permission already granted.");
  }
}

Future<void> requestBluetoothPermission() async {
  if (await Permission.bluetoothConnect.isDenied) {
    final status = await Permission.bluetoothConnect.request();
    if (status.isGranted) {
      print("Notification permission granted!");
    } else {
      print("Notification permission denied!");
    }
  } else {
    print("Notification permission already granted.");
  }
}

Future<void> requestCameraPermission() async {
  if (await Permission.camera.isDenied) {
    final status = await Permission.camera.request();
    if (status.isGranted) {
      print("Notification permission granted!");
    } else {
      print("Notification permission denied!");
    }
  } else {
    print("Notification permission already granted.");
  }
}

Future<void> requestNearbyWifiDevicesPermission() async {
  if (await Permission.nearbyWifiDevices.isDenied) {
    final status = await Permission.nearbyWifiDevices.request();
    if (status.isGranted) {
      print("Notification permission granted!");
    } else {
      print("Notification permission denied!");
    }
  } else {
    print("Notification permission already granted.");
  }
}

Future<void> requestLocationPermission() async {
  if (await Permission.location.isDenied) {
    final status = await Permission.location.request();
    if (status.isGranted) {
      print("Notification permission granted!");
    } else {
      print("Notification permission denied!");
    }
  } else {
    print("Notification permission already granted.");
  }
}

Future<void> requestPhotoPermission() async {
  if (await Permission.photos.isDenied) {
    final status = await Permission.photos.request();
    if (status.isGranted) {
      print("Notification permission granted!");
    } else {
      print("Notification permission denied!");
    }
  } else {
    print("Notification permission already granted.");
  }
}