// To parse this JSON data, do
//
//     final userCard = userCardFromJson(jsonString);

import 'dart:convert';

UserCard userCardFromJson(String str) => UserCard.fromJson(json.decode(str));

String userCardToJson(UserCard data) => json.encode(data.toJson());

class UserCard {
  bool? success;
  bool? isAuth;
  String? message;
  List<Result>? result;

  UserCard({
    this.success,
    this.isAuth,
    this.message,
    this.result,
  });

  factory UserCard.fromJson(Map<String, dynamic> json) => UserCard(
        success: json["success"],
        isAuth: json["isAuth"],
        message: json["message"],
        result: json["result"] == null
            ? []
            : List<Result>.from(json["result"]!.map((x) => Result.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "isAuth": isAuth,
        "message": message,
        "result": result == null
            ? []
            : List<dynamic>.from(result!.map((x) => x.toJson())),
      };
}

class Result {
  List<CardDesignVariation>? cardDesignVariations;
  String? cardImageId;
  String? cardShortBgUrl;
  String? cardLongBgUrl;
  String? cardImageUrl;
  String? cardImageUrl2;
  String? cardImageUrl3;
  String? cardImageUrl4;
  String? categoryId;
  String? cardName;
  String? errorTextColor;
  String? cardDesignType;
  ResultCustomImageCardDesignInfo? customImageCardDesignInfo;
  ProfileDesignInfo? profileDesignInfo;
  DpStyling? dpStyling;
  Styling? userNameStyling;
  Styling? titleStyling;
  Styling? locationStyling;
  CompanyStyling? companyStyling;
  SStyling? skillsStyling;
  SStyling? hobbiesStyling;
  SStyling? subjectsStyling;
  Styling? phoneStyling;
  Styling? emailStyling;
  Styling? addressStyling;
  ActionIcons? actionIcons;
  bool? favouriteStatus;

  Result({
    this.cardDesignVariations,
    this.cardImageId,
    this.cardShortBgUrl,
    this.cardLongBgUrl,
    this.cardImageUrl,
    this.cardImageUrl2,
    this.cardImageUrl3,
    this.cardImageUrl4,
    this.categoryId,
    this.cardName,
    this.errorTextColor,
    this.cardDesignType,
    this.customImageCardDesignInfo,
    this.profileDesignInfo,
    this.dpStyling,
    this.userNameStyling,
    this.titleStyling,
    this.locationStyling,
    this.companyStyling,
    this.skillsStyling,
    this.hobbiesStyling,
    this.subjectsStyling,
    this.phoneStyling,
    this.emailStyling,
    this.addressStyling,
    this.actionIcons,
    this.favouriteStatus,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        cardDesignVariations: json["cardDesignVariations"] == null
            ? []
            : List<CardDesignVariation>.from(json["cardDesignVariations"]!
                .map((x) => CardDesignVariation.fromJson(x))),
        cardImageId: json["cardImageId"],
        cardShortBgUrl: json["cardShortBgURL"],
        cardLongBgUrl: json["cardLongBgURL"],
        cardImageUrl: json["cardImageURL"],
        cardImageUrl2: json["cardImageURL2"],
        cardImageUrl3: json["cardImageURL3"],
        cardImageUrl4: json["cardImageURL4"],
        categoryId: json["categoryId"],
        cardName: json["cardName"],
        errorTextColor: json["errorTextColor"],
        cardDesignType: json["cardDesignType"],
        customImageCardDesignInfo: json["customImageCardDesignInfo"] == null
            ? null
            : ResultCustomImageCardDesignInfo.fromJson(
                json["customImageCardDesignInfo"]),
        profileDesignInfo: json["profileDesignInfo"] == null
            ? null
            : ProfileDesignInfo.fromJson(json["profileDesignInfo"]),
        dpStyling: json["dpStyling"] == null
            ? null
            : DpStyling.fromJson(json["dpStyling"]),
        userNameStyling: json["userNameStyling"] == null
            ? null
            : Styling.fromJson(json["userNameStyling"]),
        titleStyling: json["titleStyling"] == null
            ? null
            : Styling.fromJson(json["titleStyling"]),
        locationStyling: json["locationStyling"] == null
            ? null
            : Styling.fromJson(json["locationStyling"]),
        companyStyling: json["companyStyling"] == null
            ? null
            : CompanyStyling.fromJson(json["companyStyling"]),
        skillsStyling: json["skillsStyling"] == null
            ? null
            : SStyling.fromJson(json["skillsStyling"]),
        hobbiesStyling: json["hobbiesStyling"] == null
            ? null
            : SStyling.fromJson(json["hobbiesStyling"]),
        subjectsStyling: json["subjectsStyling"] == null
            ? null
            : SStyling.fromJson(json["subjectsStyling"]),
        phoneStyling: json["phoneStyling"] == null
            ? null
            : Styling.fromJson(json["phoneStyling"]),
        emailStyling: json["emailStyling"] == null
            ? null
            : Styling.fromJson(json["emailStyling"]),
        addressStyling: json["addressStyling"] == null
            ? null
            : Styling.fromJson(json["addressStyling"]),
        actionIcons: json["actionIcons"] == null
            ? null
            : ActionIcons.fromJson(json["actionIcons"]),
        favouriteStatus: json["favouriteStatus"],
      );

  Map<String, dynamic> toJson() => {
        "cardDesignVariations": cardDesignVariations == null
            ? []
            : List<dynamic>.from(cardDesignVariations!.map((x) => x.toJson())),
        "cardImageId": cardImageId,
        "cardShortBgURL": cardShortBgUrl,
        "cardLongBgURL": cardLongBgUrl,
        "cardImageURL": cardImageUrl,
        "cardImageURL2": cardImageUrl2,
        "cardImageURL3": cardImageUrl3,
        "cardImageURL4": cardImageUrl4,
        "categoryId": categoryId,
        "cardName": cardName,
        "errorTextColor": errorTextColor,
        "cardDesignType": cardDesignType,
        "customImageCardDesignInfo": customImageCardDesignInfo?.toJson(),
        "profileDesignInfo": profileDesignInfo?.toJson(),
        "dpStyling": dpStyling?.toJson(),
        "userNameStyling": userNameStyling?.toJson(),
        "titleStyling": titleStyling?.toJson(),
        "locationStyling": locationStyling?.toJson(),
        "companyStyling": companyStyling?.toJson(),
        "skillsStyling": skillsStyling?.toJson(),
        "hobbiesStyling": hobbiesStyling?.toJson(),
        "subjectsStyling": subjectsStyling?.toJson(),
        "phoneStyling": phoneStyling?.toJson(),
        "emailStyling": emailStyling?.toJson(),
        "addressStyling": addressStyling?.toJson(),
        "actionIcons": actionIcons?.toJson(),
        "favouriteStatus": favouriteStatus,
      };
}

class ActionIcons {
  String? type;
  String? backgroundColor;
  Color? iconColor;
  Alignment? alignment;

  ActionIcons({
    this.type,
    this.backgroundColor,
    this.iconColor,
    this.alignment,
  });

  factory ActionIcons.fromJson(Map<String, dynamic> json) => ActionIcons(
        type: json["type"],
        backgroundColor: json["backgroundColor"],
        iconColor: colorValues.map[json["iconColor"]]!,
        alignment: alignmentValues.map[json["alignment"]]!,
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "backgroundColor": backgroundColor,
        "iconColor": colorValues.reverse[iconColor],
        "alignment": alignmentValues.reverse[alignment],
      };
}

enum Alignment { CENTER, LEFT }

final alignmentValues =
    EnumValues({"center": Alignment.CENTER, "left": Alignment.LEFT});

enum Color { FFFFFF }

final colorValues = EnumValues({"FFFFFF": Color.FFFFFF});

class Styling {
  String? fontSize;
  Alignment? alignment;
  Color? fontColor;
  FontStyle? fontStyle;
  FontStyle? fontWeight;
  String? noOfLines;

  Styling({
    this.fontSize,
    this.alignment,
    this.fontColor,
    this.fontStyle,
    this.fontWeight,
    this.noOfLines,
  });

  factory Styling.fromJson(Map<String, dynamic> json) => Styling(
        fontSize: json["fontSize"],
        alignment: alignmentValues.map[json["alignment"]]!,
        fontColor: colorValues.map[json["fontColor"]]!,
        fontStyle: fontStyleValues.map[json["fontStyle"]]!,
        fontWeight: fontStyleValues.map[json["fontWeight"]]!,
        noOfLines: json["noOfLines"],
      );

  Map<String, dynamic> toJson() => {
        "fontSize": fontSize,
        "alignment": alignmentValues.reverse[alignment],
        "fontColor": colorValues.reverse[fontColor],
        "fontStyle": fontStyleValues.reverse[fontStyle],
        "fontWeight": fontStyleValues.reverse[fontWeight],
        "noOfLines": noOfLines,
      };
}

enum FontStyle { BOLD, NORMAL, SEMI_BOLD }

final fontStyleValues = EnumValues({
  "bold": FontStyle.BOLD,
  "normal": FontStyle.NORMAL,
  "semi-bold": FontStyle.SEMI_BOLD
});

class CardDesignVariation {
  Styling? userNameStyling;
  Styling? titleStyling;
  Styling? locationStyling;
  ActionIcons? actionIcons;
  ProfileDesignInfo? profileDesignInfo;
  String? cardLongBgUrl;
  String? cardDesignType;
  CardDesignVariationCustomImageCardDesignInfo? customImageCardDesignInfo;
  String? cardImageUrl4;
  String? cardImageId;
  String? cardImageUrl;

  CardDesignVariation({
    this.userNameStyling,
    this.titleStyling,
    this.locationStyling,
    this.actionIcons,
    this.profileDesignInfo,
    this.cardLongBgUrl,
    this.cardDesignType,
    this.customImageCardDesignInfo,
    this.cardImageUrl4,
    this.cardImageId,
    this.cardImageUrl,
  });

  factory CardDesignVariation.fromJson(Map<String, dynamic> json) =>
      CardDesignVariation(
        userNameStyling: json["userNameStyling"] == null
            ? null
            : Styling.fromJson(json["userNameStyling"]),
        titleStyling: json["titleStyling"] == null
            ? null
            : Styling.fromJson(json["titleStyling"]),
        locationStyling: json["locationStyling"] == null
            ? null
            : Styling.fromJson(json["locationStyling"]),
        actionIcons: json["actionIcons"] == null
            ? null
            : ActionIcons.fromJson(json["actionIcons"]),
        profileDesignInfo: json["profileDesignInfo"] == null
            ? null
            : ProfileDesignInfo.fromJson(json["profileDesignInfo"]),
        cardLongBgUrl: json["cardLongBgURL"],
        cardDesignType: json["cardDesignType"],
        customImageCardDesignInfo: json["customImageCardDesignInfo"] == null
            ? null
            : CardDesignVariationCustomImageCardDesignInfo.fromJson(
                json["customImageCardDesignInfo"]),
        cardImageUrl4: json["cardImageURL4"],
        cardImageId: json["cardImageId"],
        cardImageUrl: json["cardImageURL"],
      );

  Map<String, dynamic> toJson() => {
        "userNameStyling": userNameStyling?.toJson(),
        "titleStyling": titleStyling?.toJson(),
        "locationStyling": locationStyling?.toJson(),
        "actionIcons": actionIcons?.toJson(),
        "profileDesignInfo": profileDesignInfo?.toJson(),
        "cardLongBgURL": cardLongBgUrl,
        "cardDesignType": cardDesignType,
        "customImageCardDesignInfo": customImageCardDesignInfo?.toJson(),
        "cardImageURL4": cardImageUrl4,
        "cardImageId": cardImageId,
        "cardImageURL": cardImageUrl,
      };
}

class CardDesignVariationCustomImageCardDesignInfo {
  String? primaryColor;
  String? profileBannerImageUrl;

  CardDesignVariationCustomImageCardDesignInfo({
    this.primaryColor,
    this.profileBannerImageUrl,
  });

  factory CardDesignVariationCustomImageCardDesignInfo.fromJson(
          Map<String, dynamic> json) =>
      CardDesignVariationCustomImageCardDesignInfo(
        primaryColor: json["primaryColor"],
        profileBannerImageUrl: json["profileBannerImageURL"],
      );

  Map<String, dynamic> toJson() => {
        "primaryColor": primaryColor,
        "profileBannerImageURL": profileBannerImageUrl,
      };
}

class ProfileDesignInfo {
  Opacity? opacity;
  String? designType;
  String? errorTextColor;
  String? primaryColor;
  String? secondaryColor;
  String? textColor;
  String? profileBannerImageUrl;
  String? baseColor;
  bool? tint;

  ProfileDesignInfo({
    this.opacity,
    this.designType,
    this.errorTextColor,
    this.primaryColor,
    this.secondaryColor,
    this.textColor,
    this.profileBannerImageUrl,
    this.baseColor,
    this.tint,
  });

  factory ProfileDesignInfo.fromJson(Map<String, dynamic> json) =>
      ProfileDesignInfo(
        opacity:
            json["opacity"] == null ? null : Opacity.fromJson(json["opacity"]),
        designType: json["designType"],
        errorTextColor: json["errorTextColor"],
        primaryColor: json["primaryColor"],
        secondaryColor: json["secondaryColor"],
        textColor: json["textColor"],
        profileBannerImageUrl: json["profileBannerImageURL"],
        baseColor: json["baseColor"],
        tint: json["tint"],
      );

  Map<String, dynamic> toJson() => {
        "opacity": opacity?.toJson(),
        "designType": designType,
        "errorTextColor": errorTextColor,
        "primaryColor": primaryColor,
        "secondaryColor": secondaryColor,
        "textColor": textColor,
        "profileBannerImageURL": profileBannerImageUrl,
        "baseColor": baseColor,
        "tint": tint,
      };
}

class Opacity {
  String? primary;
  String? secondary;

  Opacity({
    this.primary,
    this.secondary,
  });

  factory Opacity.fromJson(Map<String, dynamic> json) => Opacity(
        primary: json["primary"],
        secondary: json["secondary"],
      );

  Map<String, dynamic> toJson() => {
        "primary": primary,
        "secondary": secondary,
      };
}

class CompanyStyling {
  String? fontSize;
  Alignment? alignment;
  Color? fontColor;
  FontStyle? fontStyle;
  FontStyle? fontWeight;
  String? companyDesignationFontSize;
  Color? companyDesignationFontColor;
  FontStyle? companyDesignationFontStyle;
  FontStyle? companyDesignationFontWeight;

  CompanyStyling({
    this.fontSize,
    this.alignment,
    this.fontColor,
    this.fontStyle,
    this.fontWeight,
    this.companyDesignationFontSize,
    this.companyDesignationFontColor,
    this.companyDesignationFontStyle,
    this.companyDesignationFontWeight,
  });

  factory CompanyStyling.fromJson(Map<String, dynamic> json) => CompanyStyling(
        fontSize: json["fontSize"],
        alignment: alignmentValues.map[json["alignment"]]!,
        fontColor: colorValues.map[json["fontColor"]]!,
        fontStyle: fontStyleValues.map[json["fontStyle"]]!,
        fontWeight: fontStyleValues.map[json["fontWeight"]]!,
        companyDesignationFontSize: json["companyDesignationFontSize"],
        companyDesignationFontColor:
            colorValues.map[json["companyDesignationFontColor"]]!,
        companyDesignationFontStyle:
            fontStyleValues.map[json["companyDesignationFontStyle"]]!,
        companyDesignationFontWeight:
            fontStyleValues.map[json["companyDesignationFontWeight"]]!,
      );

  Map<String, dynamic> toJson() => {
        "fontSize": fontSize,
        "alignment": alignmentValues.reverse[alignment],
        "fontColor": colorValues.reverse[fontColor],
        "fontStyle": fontStyleValues.reverse[fontStyle],
        "fontWeight": fontStyleValues.reverse[fontWeight],
        "companyDesignationFontSize": companyDesignationFontSize,
        "companyDesignationFontColor":
            colorValues.reverse[companyDesignationFontColor],
        "companyDesignationFontStyle":
            fontStyleValues.reverse[companyDesignationFontStyle],
        "companyDesignationFontWeight":
            fontStyleValues.reverse[companyDesignationFontWeight],
      };
}

class ResultCustomImageCardDesignInfo {
  String? primaryColor;
  String? profileBannerImageUrl;
  List<dynamic>? colorFilter;

  ResultCustomImageCardDesignInfo({
    this.primaryColor,
    this.profileBannerImageUrl,
    this.colorFilter,
  });

  factory ResultCustomImageCardDesignInfo.fromJson(Map<String, dynamic> json) =>
      ResultCustomImageCardDesignInfo(
        primaryColor: json["primaryColor"],
        profileBannerImageUrl: json["profileBannerImageURL"],
        colorFilter: json["colorFilter"] == null
            ? []
            : List<dynamic>.from(json["colorFilter"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "primaryColor": primaryColor,
        "profileBannerImageURL": profileBannerImageUrl,
        "colorFilter": colorFilter == null
            ? []
            : List<dynamic>.from(colorFilter!.map((x) => x)),
      };
}

class DpStyling {
  String? borderPresent;
  BorderDetails? borderDetails;
  Alignment? alignment;

  DpStyling({
    this.borderPresent,
    this.borderDetails,
    this.alignment,
  });

  factory DpStyling.fromJson(Map<String, dynamic> json) => DpStyling(
        borderPresent: json["borderPresent"],
        borderDetails: json["borderDetails"] == null
            ? null
            : BorderDetails.fromJson(json["borderDetails"]),
        alignment: alignmentValues.map[json["alignment"]]!,
      );

  Map<String, dynamic> toJson() => {
        "borderPresent": borderPresent,
        "borderDetails": borderDetails?.toJson(),
        "alignment": alignmentValues.reverse[alignment],
      };
}

class BorderDetails {
  String? type;
  Color? color;
  String? thickness;

  BorderDetails({
    this.type,
    this.color,
    this.thickness,
  });

  factory BorderDetails.fromJson(Map<String, dynamic> json) => BorderDetails(
        type: json["type"],
        color: colorValues.map[json["color"]]!,
        thickness: json["thickness"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "color": colorValues.reverse[color],
        "thickness": thickness,
      };
}

class SStyling {
  String? boxBackgroundColor;
  String? fontColor;
  String? fontSize;

  SStyling({
    this.boxBackgroundColor,
    this.fontColor,
    this.fontSize,
  });

  factory SStyling.fromJson(Map<String, dynamic> json) => SStyling(
        boxBackgroundColor: json["boxBackgroundColor"],
        fontColor: json["fontColor"],
        fontSize: json["fontSize"],
      );

  Map<String, dynamic> toJson() => {
        "boxBackgroundColor": boxBackgroundColor,
        "fontColor": fontColor,
        "fontSize": fontSize,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
