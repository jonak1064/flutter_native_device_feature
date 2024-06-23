import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:using_of_native_device_feature/providers/user_places.dart';
import 'package:using_of_native_device_feature/screens/add_places.dart';
import 'package:using_of_native_device_feature/widgets/places_lists.dart';

class PlacesScreen extends ConsumerWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userPlaces = ref.watch(UserPlaceProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ypur Places'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => const AddPlaceScreen(),
                ),
              );
            },
          )
        ],
      ),
      body: PlacesList(
        places: userPlaces,
      ),
    );
  }
}
