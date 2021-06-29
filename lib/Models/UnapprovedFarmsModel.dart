class UnapprovedFarms {
  String farmId;
  String farmName;
  String ownerId;
  Null stationId;
  Location location;
  List<PolygonalLocation> polygonalLocation;
  int area;
  Null areaUnit;
  Null cropType;
  Null soilType;
  Null cultivationType;
  Null cultivationStartDate;
  Null cultivationStart;
  Null discoveredUniqueLocationId;
  Null irrigationMode;
  Null irrigationRate;
  int irrigationCycle;
  bool active;
  bool deleted;
  bool approved;
  String createdBy;
  String createdOn;
  Null modifiedBy;
  Null modifiedOn;

  UnapprovedFarms(
      {this.farmId,
        this.farmName,
        this.ownerId,
        this.stationId,
        this.location,
        this.polygonalLocation,
        this.area,
        this.areaUnit,
        this.cropType,
        this.soilType,
        this.cultivationType,
        this.cultivationStartDate,
        this.cultivationStart,
        this.discoveredUniqueLocationId,
        this.irrigationMode,
        this.irrigationRate,
        this.irrigationCycle,
        this.active,
        this.deleted,
        this.approved,
        this.createdBy,
        this.createdOn,
        this.modifiedBy,
        this.modifiedOn});

  UnapprovedFarms.fromJson(Map<String, dynamic> json) {
    farmId = json['farmId'];
    farmName = json['farmName'];
    ownerId = json['ownerId'];
    stationId = json['stationId'];
    location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
    if (json['polygonalLocation'] != null) {
      polygonalLocation = new List<PolygonalLocation>();
      json['polygonalLocation'].forEach((v) {
        polygonalLocation.add(new PolygonalLocation.fromJson(v));
      });
    }
    area = json['area'];
    areaUnit = json['areaUnit'];
    cropType = json['cropType'];
    soilType = json['soilType'];
    cultivationType = json['cultivationType'];
    cultivationStartDate = json['cultivationStartDate'];
    cultivationStart = json['cultivationStart'];
    discoveredUniqueLocationId = json['discoveredUniqueLocationId'];
    irrigationMode = json['irrigationMode'];
    irrigationRate = json['irrigationRate'];
    irrigationCycle = json['irrigationCycle'];
    active = json['active'];
    deleted = json['deleted'];
    approved = json['approved'];
    createdBy = json['createdBy'];
    createdOn = json['createdOn'];
    modifiedBy = json['modifiedBy'];
    modifiedOn = json['modifiedOn'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['farmId'] = this.farmId;
    data['farmName'] = this.farmName;
    data['ownerId'] = this.ownerId;
    data['stationId'] = this.stationId;
    if (this.location != null) {
      data['location'] = this.location.toJson();
    }
    if (this.polygonalLocation != null) {
      data['polygonalLocation'] =
          this.polygonalLocation.map((v) => v.toJson()).toList();
    }
    data['area'] = this.area;
    data['areaUnit'] = this.areaUnit;
    data['cropType'] = this.cropType;
    data['soilType'] = this.soilType;
    data['cultivationType'] = this.cultivationType;
    data['cultivationStartDate'] = this.cultivationStartDate;
    data['cultivationStart'] = this.cultivationStart;
    data['discoveredUniqueLocationId'] = this.discoveredUniqueLocationId;
    data['irrigationMode'] = this.irrigationMode;
    data['irrigationRate'] = this.irrigationRate;
    data['irrigationCycle'] = this.irrigationCycle;
    data['active'] = this.active;
    data['deleted'] = this.deleted;
    data['approved'] = this.approved;
    data['createdBy'] = this.createdBy;
    data['createdOn'] = this.createdOn;
    data['modifiedBy'] = this.modifiedBy;
    data['modifiedOn'] = this.modifiedOn;
    return data;
  }
}

class Location {
  int lat;
  int log;

  Location({this.lat, this.log});

  Location.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    log = json['log'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lat'] = this.lat;
    data['log'] = this.log;
    return data;
  }
}

class PolygonalLocation {
  double lat;
  double log;

  PolygonalLocation({this.lat, this.log});

  PolygonalLocation.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    log = json['log'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lat'] = this.lat;
    data['log'] = this.log;
    return data;
  }
}
