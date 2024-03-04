class UserDetail {
  String? userName;
  String? emailId;
  String? phoneNo;
  String? photoUrl;
  String? uuid;

  UserDetail({this.userName = "", this.emailId = "", this.phoneNo = "", this.photoUrl = "", this.uuid = ""});

  @override
  String toString() {
    return "UserDetail : { userName : {$userName}, emailId : {$emailId}, phoneNo : {$phoneNo}, photoUrl : {$photoUrl}, uuid : {$uuid} }";
  }
}