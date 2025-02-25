class User {
  final String id;
  final String name;
  final String email;
  final String? profileImageUrl;
  final int age;
  final String? bio;
  final String? gender;
  final String? lookingFor;
  final List<String>? interests;

  User({
    required this.id,
    required this.name,
    required this.email,
    this.profileImageUrl,
    required this.age,
    this.bio,
    this.gender,
    this.lookingFor,
    this.interests,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'profileImageUrl': profileImageUrl,
      'age': age,
      'bio': bio,
      'gender': gender,
      'lookingFor': lookingFor,
      'interests': interests,
    };
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      profileImageUrl: json['profileImageUrl'],
      age: json['age'],
      bio: json['bio'],
      gender: json['gender'],
      lookingFor: json['lookingFor'],
      interests: json['interests'] != null ? List<String>.from(json['interests']) : null,
    );
  }
}