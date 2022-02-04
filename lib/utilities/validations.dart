class Validations {
  validationNormalTextField({required String? someText}) {
    if (someText == null || someText.isEmpty) {
      return 'Please enter some text';
    }
    return null;
  }
}
