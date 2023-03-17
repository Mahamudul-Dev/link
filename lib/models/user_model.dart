class UserModel {
  int id;
  String userName;
  String userEmail;
  int? userPhone;
  String userProfilePic;
  String? coverPhoto;
  String gender;
  int? age;
  String? reletionshipStatus;
  bool? isSelected;
  bool? isActive;
  String? about;

  UserModel(
      {required this.id,
      required this.userName,
      required this.userEmail,
      this.userPhone,
      this.about,
      required this.userProfilePic,
      this.coverPhoto,
      required this.gender,
      this.age,
      this.isSelected,
      this.isActive,
      this.reletionshipStatus});
}
