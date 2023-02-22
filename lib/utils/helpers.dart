import 'dart:math';

class Helpers {
  static int getExpToNextLevel(int level) {
    return level * level;
  }

  static String getLanguageCode(String language) {
    switch (language) {
      case 'English':
        return 'en';
      case 'Traditional Chinese':
        return 'zh-Hant';
      case 'Simplified Chinese':
        return 'zh-Hans';
      default:
        return 'en';
    }
  }
}
