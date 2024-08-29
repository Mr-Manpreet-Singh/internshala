import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internshala/features/filters/repository/filters_repo.dart';

// Define the provider for the selected duration


class DurationDropDown extends ConsumerStatefulWidget {
  const DurationDropDown({super.key});

  @override
  ConsumerState<DurationDropDown> createState() => _DurationDropDownState();
}

class _DurationDropDownState extends ConsumerState<DurationDropDown> {
  final GlobalKey _textFieldKey = GlobalKey(); 


  @override
  Widget build(BuildContext context) {
    // Listen to the selected duration from the provider
    final selectedDuration = ref.watch(selectedDurationProvider);

    return SizedBox(
      height: 50,
      child: TextField(
        onTapOutside: (event) => FocusScope.of(context).unfocus(),
        key: _textFieldKey, // Assign the key to the TextField
        controller: TextEditingController(text: selectedDuration),
        readOnly: true,
        onTap: ()=>FiltersRepo.showDropdown(_textFieldKey,ref,context),
        decoration: InputDecoration(
          suffixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(onPressed: ()=>FiltersRepo.showDropdown(_textFieldKey,ref,context), icon: const Icon(Icons.arrow_drop_down)),
              IconButton(
                  onPressed: () => ref.read(selectedDurationProvider.notifier).state = null,
                  icon: const Icon(Icons.close)),
            ],
          ),
          labelText: "Choose Duration",
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
