import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class HomeController extends GetxController {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  RxList<String> places = <String>[
    "https://images.unsplash.com/photo-1681027100696-7cebc1537efb?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1681967554336-1dfab5c8f396?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://plus.unsplash.com/premium_photo-1675017880624-1cc623cbdf0e?q=80&w=1588&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://plus.unsplash.com/premium_photo-1669926574002-3d50f76582ff?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1681027100285-f17bec2bee6e?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  ].obs;
  RxList<String> inspiration = <String>[
    "https://plus.unsplash.com/premium_photo-1709772918943-83a29278e406?q=80&w=1588&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://plus.unsplash.com/premium_photo-1698350496164-18a2c16a7b02?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1513836279014-a89f7a76ae86?q=80&w=1588&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1511207538754-e8555f2bc187?q=80&w=1527&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1503435824048-a799a3a84bf7?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  ].obs;
  RxList<String> emotions = <String>[
    "https://images.unsplash.com/photo-1503756234508-e32369269deb?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1504681869696-d977211a5f4c?q=80&w=1526&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://plus.unsplash.com/premium_photo-1669750817526-6bbdb0c20bfe?q=80&w=1588&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1506953823976-52e1fdc0149a?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://plus.unsplash.com/premium_photo-1680883415316-1a0d97b96478?q=80&w=1585&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  ].obs;
  RxList categories = [
    {"icon": Icons.sailing, "label": "Sailing"},
    {"icon": Icons.hiking, "label": "Hiking"},
    {"icon": Icons.kayaking, "label": "Kayaking"},
    {"icon": Icons.snowboarding, "label": "Snowboarding"},
    {"icon": Icons.beach_access, "label": "Beach"},
    {"icon": Icons.flight, "label": "Flying"},
    {"icon": Icons.scuba_diving, "label": "Scuba Diving"},
    {"icon": Icons.surfing, "label": "Surfing"},
    {"icon": Icons.local_fire_department, "label": "Bonfire"},
    {"icon": Icons.park, "label": "Nature Walk"},
    {"icon": Icons.backpack, "label": "Backpacking"},
    {"icon": Icons.cabin, "label": "Cabin Stay"},
    {"icon": Icons.terrain, "label": "Rock Climbing"},
    {"icon": Icons.star, "label": "Stargazing"},
  ].obs;
}
