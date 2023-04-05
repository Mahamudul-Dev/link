import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:link/controllers/call_controllers/random_call_controller.dart';
import 'package:link/styles/link_colors.dart';
import 'package:link/widgets/country_picker_box.dart';

class RandomCallSettingsSheet extends StatelessWidget {
  const RandomCallSettingsSheet({Key? key, required this.controller})
      : super(key: key);
  final RandomCallController controller;
  @override
  Widget build(BuildContext context) {
    return BottomSheet(
        onClosing: () {},
        backgroundColor: raisinBlack,
        enableDrag: false,
        builder: (context) {
          return Container(
            width: MediaQuery.of(context).size.width,
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 20),
            child: ListView(
              children: [
                const Text(
                  'Describe your interest',
                  style: TextStyle(
                      color: platinum,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 15.0, bottom: 10.0),
                  child: Text(
                    'Age Range',
                    style: TextStyle(fontSize: 18, color: platinum),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 6.0, horizontal: 15.0),
                      decoration: BoxDecoration(
                          color: raisinBlack,
                          borderRadius: BorderRadius.circular(8.0)),
                      child: Obx(() {
                        return DropdownButton(
                            icon: const Icon(Icons.arrow_drop_down),
                            iconSize: 24,
                            elevation: 16,
                            borderRadius: BorderRadius.circular(8.0),
                            style:
                                const TextStyle(color: platinum, fontSize: 18),
                            value: controller.defaultAgeStart.value,
                            items: controller.ageList
                                .map<DropdownMenuItem<int>>((int value) {
                              return DropdownMenuItem<int>(
                                value: value,
                                child: Text(value.toString()),
                              );
                            }).toList(),
                            onChanged: (value) {
                              controller.defaultAgeStart.value = value as int;
                            });
                      }),
                    ),
                    const Text(
                      'to',
                      style: TextStyle(fontSize: 18, color: platinum),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 6.0, horizontal: 15.0),
                      decoration: BoxDecoration(
                          color: raisinBlack,
                          borderRadius: BorderRadius.circular(8.0)),
                      child: Obx(() {
                        return DropdownButton(
                            icon: const Icon(Icons.arrow_drop_down),
                            iconSize: 24,
                            elevation: 16,
                            borderRadius: BorderRadius.circular(8.0),
                            style:
                                const TextStyle(color: platinum, fontSize: 18),
                            value: controller.defaultAgeEnd.value,
                            items: controller.ageList
                                .map<DropdownMenuItem<int>>((int value) {
                              return DropdownMenuItem<int>(
                                value: value,
                                child: Text(value.toString()),
                              );
                            }).toList(),
                            onChanged: (value) {
                              controller.defaultAgeEnd.value = value as int;
                            });
                      }),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 15.0, bottom: 10.0),
                  child: Text(
                    'Select country',
                    style: TextStyle(fontSize: 18, color: platinum),
                  ),
                ),
                const CountryPickerField(),
                const SizedBox(
                  height: 15.0,
                ),
                // gender selection
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Select Gender',
                      style: TextStyle(fontSize: 18, color: platinum),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 6.0, horizontal: 15.0),
                      decoration: BoxDecoration(
                          color: raisinBlack,
                          borderRadius: BorderRadius.circular(8.0)),
                      child: Obx(() {
                        return DropdownButton(
                            icon: const Icon(Icons.arrow_drop_down),
                            iconSize: 24,
                            elevation: 16,
                            borderRadius: BorderRadius.circular(8.0),
                            style:
                                const TextStyle(color: platinum, fontSize: 18),
                            value: controller.defaultGender.value,
                            items: controller.genderList
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value.toString()),
                              );
                            }).toList(),
                            onChanged: (value) {
                              controller.defaultGender.value = value.toString();
                            });
                      }),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Material(
                      elevation: 4.0,
                      color: Colors.transparent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      child: InkWell(
                        onTap: () {
                          controller.showAdvanceSheet.value =
                              !controller.showAdvanceSheet.value;
                        },
                        child: Container(
                          padding: const EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: electricPurple),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Icon(
                                Icons.search_rounded,
                                color: platinum,
                                size: 30,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Match',
                                style: TextStyle(fontSize: 16),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        });
  }
}
