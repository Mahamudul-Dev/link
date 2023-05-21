import 'package:flutter/material.dart';
import 'package:get/get.dart';

class P2PChatController extends GetxController {
  Rx<TextEditingController> messageValue = TextEditingController().obs;
  final TextEditingController messegeEditingController = TextEditingController();

}
