class WeaponModel {
    WeaponModel({
        required this.displayName,
        required this.displayIcon,
        required this.weaponStats,
        required this.shopData,
    });

    final String displayName;
    final String displayIcon;
    final WeaponStats? weaponStats;
    final ShopData? shopData;

    factory WeaponModel.fromJson(Map<String, dynamic> json){ 
        return WeaponModel(
            displayName: json["displayName"] ?? "",
            displayIcon: json["displayIcon"] ?? "",
            weaponStats: json["weaponStats"] == null ? null : WeaponStats.fromJson(json["weaponStats"]),
            shopData: json["shopData"] == null ? null : ShopData.fromJson(json["shopData"]),
        );
    }

    Map<String, dynamic> toJson() => {
        "displayName": displayName,
        "displayIcon": displayIcon,
        "weaponStats": weaponStats?.toJson(),
        "shopData": shopData?.toJson(),
    };

    @override
    String toString(){
        return "$displayName, $displayIcon, $weaponStats, $shopData, ";
    }
}

class ShopData {
    ShopData({
        required this.cost,
        required this.category,
        required this.canBeTrashed,
        required this.assetPath,
    });

    final int cost;
    final String category;
    final bool canBeTrashed;
    final String assetPath;

    factory ShopData.fromJson(Map<String, dynamic> json){ 
        return ShopData(
            cost: json["cost"] ?? 0,
            category: json["category"] ?? "",
            canBeTrashed: json["canBeTrashed"] ?? false,
            assetPath: json["assetPath"] ?? "",
        );
    }

    Map<String, dynamic> toJson() => {
        "cost": cost,
        "category": category,
        "canBeTrashed": canBeTrashed,
        "assetPath": assetPath,
    };

    @override
    String toString(){
        return "$cost, $category, $canBeTrashed, $assetPath, ";
    }
}

class WeaponStats {
    WeaponStats({
        required this.fireRate,
        required this.equipTimeSeconds,
        required this.reloadTimeSeconds,
        required this.damageRanges,
    });

    final double fireRate;
    final double equipTimeSeconds;
    final double reloadTimeSeconds;
    final List<DamageRange> damageRanges;

    factory WeaponStats.fromJson(Map<String, dynamic> json){ 
        return WeaponStats(
            fireRate: json["fireRate"]?.toDouble() ?? 0.0,
    equipTimeSeconds: json["equipTimeSeconds"]?.toDouble() ?? 0.0,
    reloadTimeSeconds: json["reloadTimeSeconds"]?.toDouble() ?? 0.0,
    damageRanges: (json["damageRanges"] as List<dynamic>?)
        ?.map((x) => DamageRange.fromJson(x))
        .toList() ?? [],
        );
    }

    Map<String, dynamic> toJson() => {
        "fireRate": fireRate,
        "equipTimeSeconds": equipTimeSeconds,
        "reloadTimeSeconds": reloadTimeSeconds,
        "damageRanges": damageRanges.map((x) => x.toJson()).toList(),
    };

    @override
    String toString(){
        return "$fireRate, $equipTimeSeconds, $reloadTimeSeconds, $damageRanges, ";
    }
}

class DamageRange {
    DamageRange({
        required this.rangeStartMeters,
        required this.rangeEndMeters,
        required this.headDamage,
        required this.bodyDamage,
        required this.legDamage,
    });

    final int rangeStartMeters;
    final int rangeEndMeters;
    final double headDamage;
    final double bodyDamage;
    final double legDamage;

    factory DamageRange.fromJson(Map<String, dynamic> json){ 
        return DamageRange(
            rangeStartMeters: json["rangeStartMeters"] ?? 0,
            rangeEndMeters: json["rangeEndMeters"] ?? 0,
            headDamage: json["headDamage"]?.toDouble() ?? 0.0,
            bodyDamage: json["bodyDamage"]?.toDouble() ?? 0.0,
            legDamage: json["legDamage"]?.toDouble() ?? 0.0,
        );
    }

    Map<String, dynamic> toJson() => {
        "rangeStartMeters": rangeStartMeters,
        "rangeEndMeters": rangeEndMeters,
        "headDamage": headDamage,
        "bodyDamage": bodyDamage,
        "legDamage": legDamage,
    };

    @override
    String toString(){
        return "$rangeStartMeters, $rangeEndMeters, $headDamage, $bodyDamage, $legDamage, ";
    }
}

