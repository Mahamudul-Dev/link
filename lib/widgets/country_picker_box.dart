import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:link/styles/link_colors.dart';

class CountryPickerField extends StatefulWidget {
  const CountryPickerField({super.key});

  @override
  State<CountryPickerField> createState() => _CountryPickerFieldState();
}

class _CountryPickerFieldState extends State<CountryPickerField> {
  Country? selectedCountry;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: slateGray,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: InkWell(
              onTap: () {
                showCountryPicker(
                  context: context,
                  onSelect: (Country country) {
                    setState(() {
                      selectedCountry = country;
                    });
                  },
                  showPhoneCode: false,
                  favorite: ['US', 'CA'],
                );
              },
              child: Row(
                children: <Widget>[
                  const Icon(Icons.flag),
                  const SizedBox(width: 8.0),
                  Text(selectedCountry != null
                      ? selectedCountry!.name
                      : 'Selected Country'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
