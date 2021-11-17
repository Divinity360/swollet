class UserData {
  UserData({
    required this.firstName,
    required this.lastName,
  });

  String firstName;
  String lastName;

  Map<String, Object> toMap() {
    return {
      'firstName': firstName,
      'lastName': lastName,
    };
  }

  static UserData fromMap(Map value) {
    return UserData(
      firstName: value['firstName'],
      lastName: value['lastName'],
    );
  }

  @override
  String toString() {
    return ('{firstName: $firstName, lastName: $lastName}');
  }
}
