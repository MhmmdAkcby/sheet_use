enum LanguageItem { appBarName, addYourNote, welcome, exampleString1, exampleString2 }

extension LanguageItemExtension on LanguageItem {
  String languageItem() {
    switch (this) {
      case LanguageItem.appBarName:
        return 'Sheet Use';
      case LanguageItem.addYourNote:
        return 'Add your note';
      case LanguageItem.welcome:
        return 'Welcome';
      case LanguageItem.exampleString1:
        return 'Your Note';
      case LanguageItem.exampleString2:
        return 'your write text...';
    }
  }
}
