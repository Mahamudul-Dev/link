import 'package:flutter/material.dart';
import 'package:link/styles/link_colors.dart';


class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({Key? key, this.onAddTap, this.onSearchTap}) : super(key: key);

  final void Function()? onAddTap;
  final void Function()? onSearchTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(children: [
        Expanded(
          child: Container(
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ashBlack,
            ),
            child: Row(
              children: [
                Expanded(
                    child: TextFormField(
                  decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                      border: InputBorder.none,
                      hintText: 'Search...'),
                )),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: InkWell(
                        onTap: onSearchTap,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: deepGrey,
                          ),
                          child: const Center(
                            child: Icon(Icons.search_rounded),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 2.0),
          child: InkWell(
            child: Material(
              elevation: 4.0,
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: onAddTap,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: pictonBlue,
                  ),
                  child: const Center(
                    child: Icon(Icons.add),
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}