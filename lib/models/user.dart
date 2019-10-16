class User {
  static const String PassionCooking = 'cooking';
  static const String PassionHiking = 'hiking';
  static const String PassionTraveling = 'traveling';

  Map<String, dynamic> data = {
    'firstName': '',
    'lastName': '',
    'phone': '',
    'email': '',
  };

  Map<String, bool> passions = {
    PassionCooking: false,
    PassionHiking: false,
    PassionTraveling: false
  };
  bool newsletter = false;

  save() {
    print('saving user using a web service');
  }
}