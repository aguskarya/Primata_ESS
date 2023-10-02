class MenuUsers {
  String? user;
  String? standardMenu;
  String? pinid;
  int? statusUser;
  String? emailAddress;
  bool? tabPayroll;
  String? kodeDepartment;
  String? schedulePeriod;
  String? scheduleDepartment;
  bool? employeeRight;
  bool? scheduleRight;
  int? id;
  bool? rightExtraDo;
  bool? rightOt;
  bool? rightImt;
  bool? rightTm;
  int? shiftOptionCol;
  String? userName;
  String? userPwd;
  bool? loginStatus;
  int? loginAutoNo;
  String? loginTime;

  MenuUsers(
      {this.user,
      this.standardMenu,
      this.pinid,
      this.statusUser,
      this.emailAddress,
      this.tabPayroll,
      this.kodeDepartment,
      this.schedulePeriod,
      this.scheduleDepartment,
      this.employeeRight,
      this.scheduleRight,
      this.id,
      this.rightExtraDo,
      this.rightOt,
      this.rightImt,
      this.rightTm,
      this.shiftOptionCol,
      this.userName,
      this.userPwd,
      this.loginStatus,
      this.loginAutoNo,
      this.loginTime});

  MenuUsers.fromJson(Map<String, dynamic> json) {
    user = json['user'];
    standardMenu = json['standardMenu'];
    pinid = json['pinid'];
    statusUser = json['statusUser'];
    emailAddress = json['emailAddress'];
    tabPayroll = json['tabPayroll'];
    kodeDepartment = json['kodeDepartment'];
    schedulePeriod = json['schedulePeriod'];
    scheduleDepartment = json['scheduleDepartment'];
    employeeRight = json['employeeRight'];
    scheduleRight = json['scheduleRight'];
    id = json['id'];
    rightExtraDo = json['rightExtraDo'];
    rightOt = json['rightOt'];
    rightImt = json['rightImt'];
    rightTm = json['rightTm'];
    shiftOptionCol = json['shiftOptionCol'];
    userName = json['userName'];
    userPwd = json['userPwd'];
    loginStatus = json['loginStatus'];
    loginAutoNo = json['loginAutoNo'];
    loginTime = json['loginTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['user'] = user;
    data['standardMenu'] = standardMenu;
    data['pinid'] = pinid;
    data['statusUser'] = statusUser;
    data['emailAddress'] = emailAddress;
    data['tabPayroll'] = tabPayroll;
    data['kodeDepartment'] = kodeDepartment;
    data['schedulePeriod'] = schedulePeriod;
    data['scheduleDepartment'] = scheduleDepartment;
    data['employeeRight'] = employeeRight;
    data['scheduleRight'] = scheduleRight;
    data['id'] = id;
    data['rightExtraDo'] = rightExtraDo;
    data['rightOt'] = rightOt;
    data['rightImt'] = rightImt;
    data['rightTm'] = rightTm;
    data['shiftOptionCol'] = shiftOptionCol;
    data['userName'] = userName;
    data['userPwd'] = userPwd;
    data['loginStatus'] = loginStatus;
    data['loginAutoNo'] = loginAutoNo;
    data['loginTime'] = loginTime;
    return data;
  }
}
