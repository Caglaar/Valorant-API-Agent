class AgentModel {
  final String uuid;
  final String displayName;
  final String displayIcon;
  final String description;
  final String developerName;
  final bool isPlayableCharacter;
  final List<String> backgroundGradientColors;
  final String? fullPortrait;
  final String killfeedPortrait;
  final Role? role;
  final List<Ability> abilities;

  AgentModel({
    required this.uuid,
    required this.displayName,
    required this.displayIcon,
    required this.description,
    required this.developerName,
    required this.isPlayableCharacter,
    required this.backgroundGradientColors,
    this.fullPortrait,
    required this.killfeedPortrait,
    this.role,
    required this.abilities,
  });

  get state => null;
  @override
  String toString()
  {
    return "name = $displayName,$abilities renkler = $backgroundGradientColors";
  }
  factory AgentModel.fromJson(Map<String, dynamic> json) => AgentModel(
        uuid: json["uuid"],
        displayName: json["displayName"],
        displayIcon: json["displayIcon"],
        description: json["description"],
        developerName: json["developerName"],
        isPlayableCharacter: json["isPlayableCharacter"],
        backgroundGradientColors: List<String>.from(json["backgroundGradientColors"].map((x) => x)),
        fullPortrait: json["fullPortrait"],
        killfeedPortrait: json["killfeedPortrait"],
        role: json["role"] == null ? null : Role.fromJson(json["role"]),
        abilities: List<Ability>.from(
            json["abilities"].map((x) => Ability.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "displayName": displayName,
        "displayIcon": displayIcon,
        "description": description,
        "developerName": developerName,
        "isPlayableCharacter": isPlayableCharacter,
        "backgroundGradientColors": List<dynamic>.from(backgroundGradientColors.map((x) => x)),
        "fullPortrait": fullPortrait,
        "killfeedPortrait": killfeedPortrait,
        "role": role?.toJson(),
        "abilities": List<dynamic>.from(abilities.map((x) => x.toJson())),
      };
}

class Ability {
  final String slot;
  final String displayName;
  final String description;
  final String? displayIcon;

  Ability({
    required this.slot,
    required this.displayName,
    required this.description,
    this.displayIcon,
  });
  @override
  String toString()
  {
    return "Abilitys = $slot";
  }
  factory Ability.fromJson(Map<String, dynamic> json) => Ability(
        slot: json["slot"],
        displayName: json["displayName"],
        description: json["description"],
        displayIcon: json["displayIcon"],
      );

  Map<String, dynamic> toJson() => {
        "slot": slot,
        "displayName": displayName,
        "description": description,
        "displayIcon": displayIcon,
      };
}

class Role {
  final String uuid;
  final String displayName;
  final String description;
  final String displayIcon;
  final String assetPath;

  Role({
    required this.uuid,
    required this.displayName,
    required this.description,
    required this.displayIcon,
    required this.assetPath,
  });

  factory Role.fromJson(Map<String, dynamic> json) => Role(
        uuid: json["uuid"],
        displayName: json["displayName"],
        description: json["description"],
        displayIcon: json["displayIcon"],
        assetPath: json["assetPath"],
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "displayName": displayName,
        "description": description,
        "displayIcon": displayIcon,
        "assetPath": assetPath,
      };
}
