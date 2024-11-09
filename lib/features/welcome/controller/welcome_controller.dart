import 'package:ass_travel_app/core/resources/images.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  RxList<String> images = <String>[
    Images.welcomeOne,
    Images.welcomeTwo,
    Images.welcomeThree,
  ].obs;

  RxList<String> title = <String>[
    "Explore the World",
    "Find Your Adventure",
    "Enjoy the Journey"
  ].obs;

  RxList<String> subtitle = <String>[
    "Discover breathtaking\ndestinations.",
    "Embark on unforgettable\nexperiences.",
    "Create memories thatl\nast a lifetime."
  ].obs;

  RxList<String> description = <String>[
    "With our app, you can explore top travel destinations around the world, curated just for you.",
    "Find adventures that match your interests, from mountain hikes to beach getaways.",
    "Travel isn't just about reaching the destination, it's about the stories you collect along the way."
  ].obs;

  var currentPageIndex = 0.obs;

  void updatePageIndex(int index) {
    currentPageIndex.value = index;
  }
}
