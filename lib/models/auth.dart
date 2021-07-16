class Auth {
  int? status;
  String? statusMessage;

  Auth({this.status, this.statusMessage});

  Auth.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    statusMessage = json['status_message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['status_message'] = this.statusMessage;
    return data;
  }
}
