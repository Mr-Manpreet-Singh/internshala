
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/colors.dart';
import '../../../../providers/locations_provider.dart';

class FilteredCities extends StatelessWidget {
  const FilteredCities({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final cities = ref.watch(cityProvider);
      final List<String> filteredcities = [];
      for (var city in cities.entries) {
        if (city.value) {
          filteredcities.add(city.key);
        }
      }
    
      return Wrap(
        runSpacing: 2,
        spacing: 4,
        children: [
          ...filteredcities.map(
            (city) {
              return ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: myBlueColor,
                    foregroundColor: myWhiteColor,
                  ),
                  iconAlignment: IconAlignment.end,
                  icon: const Icon(Icons.close),
                  onPressed: () => ref.read(cityProvider.notifier).toggleCity(city),
                  label: Text(city));
            },
          )
        ],
      );
    });
  }
}
