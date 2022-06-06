import 'package:bikespace/classes/breakpoint.class.dart';
import 'package:bikespace/widgets/map_search.widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late GoogleMapController mapController;

  late Set<Marker> markers = {};

  final LatLng _center = const LatLng(-23.5367184, -46.7270103);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void loadParking() async {
    Set<Marker> localMarkers = {};
    Marker myLocation = Marker(
        markerId: const MarkerId("Minha localização"),
        position: _center,
        draggable: false);
    localMarkers.add(myLocation);
    setState(() {
      markers = localMarkers;
    });
  }

  @override
  void initState() {
    super.initState();
    loadParking();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SizedBox(
        width: 120,
        height: 120,
        child: Padding(
          padding: const EdgeInsets.only(top: 45),
          child: FloatingActionButton(
            onPressed: () => {print("TESTING")},
            child: const ImageIcon(AssetImage("assets/qr_code.png"), size: 45),
            backgroundColor: const Color(0xFFFF2962),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xFFEDF1F6),
        child: SizedBox(
          height: 71,
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const <Widget>[
                    SizedBox(
                      width: 32,
                    ),
                    FaIcon(
                      FontAwesomeIcons.mapLocationDot,
                      size: 40,
                      color: Color(0xFF404754),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    FaIcon(
                      FontAwesomeIcons.solidBookmark,
                      size: 40,
                      color: Color(0xFF404754),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const <Widget>[
                    FaIcon(
                      FontAwesomeIcons.fileInvoiceDollar,
                      size: 40,
                      color: Color(0xFF404754),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    FaIcon(
                      FontAwesomeIcons.solidUser,
                      size: 40,
                      color: Color(0xFF404754),
                    ),
                    SizedBox(
                      width: 32,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(target: _center, zoom: 15),
              markers: markers,
            ),
            const SearchBar()
          ],
        ),
      ),
    );
  }
}
