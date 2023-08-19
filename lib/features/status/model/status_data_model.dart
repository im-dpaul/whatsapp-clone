class AllStatusDataModel {
  List<AllStatusData>? allStatusData;

  AllStatusDataModel({this.allStatusData});

  AllStatusDataModel.fromJson(Map<String, dynamic> json) {
    if (json['allStatusData'] != null) {
      allStatusData = <AllStatusData>[];
      json['allStatusData'].forEach((v) {
        allStatusData?.add(AllStatusData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (allStatusData != null) {
      data['allStatusData'] = allStatusData?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AllStatusData {
  String? statusType;
  List<StatusData>? statusData;

  AllStatusData({this.statusType, this.statusData});

  AllStatusData.fromJson(Map<String, dynamic> json) {
    statusType = json['statusType'];
    if (json['statusData'] != null) {
      statusData = <StatusData>[];
      json['statusData'].forEach((v) {
        statusData?.add(StatusData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['statusType'] = statusType;
    if (statusData != null) {
      data['statusData'] = statusData?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class StatusData {
  String? name;
  int? statusCount;
  String? lastStatus;
  String? updateTime;

  StatusData({this.name, this.statusCount, this.lastStatus, this.updateTime});

  StatusData.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    statusCount = json['statusCount'];
    lastStatus = json['lastStatus'];
    updateTime = json['updateTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['statusCount'] = statusCount;
    data['lastStatus'] = lastStatus;
    data['updateTime'] = updateTime;
    return data;
  }
}
