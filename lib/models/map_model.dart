class MapModel {
  final String displayName;
  final String? narrativeDescription;
  final String? coordinates;
  final String? displayIcon;
  final String? listViewIcon;
  final String? splash;

  MapModel({
    required this.displayName,
    required this.narrativeDescription,
    required this.coordinates,
    required this.displayIcon,
    required this.listViewIcon,
    required this.splash
  });

  factory MapModel.fromJson(Map<String, dynamic> json) => MapModel(
        displayName: json["displayName"],
        narrativeDescription: json["narrativeDescription"],
        coordinates: json["coordinates"],
        displayIcon: json["displayIcon"],
        listViewIcon: json["listViewIcon"],
        splash: json["splash"],
      );

  Map<String, dynamic> toJson() => {
        "displayName": displayName,
        "displayIcon": displayIcon,
        "narrativeDescription": narrativeDescription,
        "coordinates": coordinates ,
        "listViewIcon": listViewIcon,
        "splash": splash,
      };
}