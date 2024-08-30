import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internshala/providers/locations_provider.dart';

import 'widgets/my_checkbox.dart';

class CityFilter extends ConsumerWidget {
  const CityFilter({super.key});

  void updateCityFilter(WidgetRef ref, String value) {
    ref.read(cityProvider.notifier).toggleCity(value);
  }

  void resetCityFilters(WidgetRef ref) {
    ref.read(cityProvider.notifier).resetAllCitys();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cities = ref.watch(cityProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("City Filters"),
        actions: [
          TextButton(onPressed: () => resetCityFilters(ref), child: const Text("Clear all")),
        ],
      ),
      body: ListView.builder(
          itemCount: cities.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                MyCheckBox(
                  title: cities.keys.toList()[index],
                  isChecked: cities.values.toList()[index],
                  updateFilter: () => updateCityFilter(ref, cities.keys.toList()[index]),
                )
              ],
            );
          }),
    );
  }
}
