import 'package:flutter/material.dart';
import 'package:toury_app/widgets/bottom_nav_bar.dart';
import 'package:toury_app/widgets/top_nav_bar.dart';
import 'package:toury_app/widgets/side_buttons.dart';
import 'package:toury_app/widgets/drawer.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart' as mapbox;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true, 
      drawer: CustomDrawer(),
      body: Stack(
        children: [
          Positioned.fill(
            child: MapWidget(
              key: const ValueKey("mapWidget"),
              textureView: true,
              mapOptions: MapOptions(
                pixelRatio: MediaQuery.of(context).devicePixelRatio,
              ),
              onMapCreated: (mapboxMap) {
                mapboxMap.setCamera(
                  CameraOptions(
                    center: Point(coordinates: Position(-122.4194, 37.7749)),
                    zoom: 10.0,
                  ),
                );

                mapboxMap.loadStyleURI(MapboxStyles.MAPBOX_STREETS);

                mapboxMap.gestures.updateSettings(
                  GesturesSettings(
                    scrollEnabled: true,
                    pinchToZoomEnabled: true,
                    rotateEnabled: true,
                    simultaneousRotateAndPinchToZoomEnabled: true,
                    pitchEnabled: true,
                    doubleTapToZoomInEnabled: true,
                    doubleTouchToZoomOutEnabled: true,
                    quickZoomEnabled: true,
                  ),
                );
              },
            ),
          ),

          // UI elements
          const TopNavBar(),
          const Positioned(
            bottom: 100,
            right: 16,
            child: SideButtons(),
          ),
          const Positioned(
            bottom: 160,
            left: 16,
            child: Text(
              '1932 1st Ave, Seattle, WA 98101',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'SF Pro',
                backgroundColor: Colors.black54,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: BottomNavBar(),
      ),
    );
  }
}
