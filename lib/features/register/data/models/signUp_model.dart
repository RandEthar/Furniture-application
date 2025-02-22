class SignupModel {
  final String firstName;
  final String lastName;
  final String email;
  final String uid;

  SignupModel(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.uid});

 Map<String, dynamic> toMap() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'uid': uid,
    };
  }
}
