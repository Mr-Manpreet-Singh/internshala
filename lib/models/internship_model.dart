// AUTO GENERATED
// Json --> Dart
// Try Not To Change

class ApplicationStatusMessage {
  bool toShow;
  String message;
  String type;

  ApplicationStatusMessage({
    required this.toShow,
    required this.message,
    required this.type,
  });

  factory ApplicationStatusMessage.fromJson(Map<String, dynamic> json) {
    return ApplicationStatusMessage(
      toShow: json['to_show'],
      message: json['message'],
      type: json['type'],
    );
  }
}

class Stipend {
  String salary;
  dynamic tooltip;
  int salaryValue1;
  dynamic salaryValue2;
  String salaryType;
  String currency;
  String scale;
  bool largeStipendText;

  Stipend({
    required this.salary,
    this.tooltip,
    required this.salaryValue1,
    this.salaryValue2,
    required this.salaryType,
    required this.currency,
    required this.scale,
    required this.largeStipendText,
  });

  factory Stipend.fromJson(Map<String, dynamic> json) {
    return Stipend(
      salary: json['salary'],
      tooltip: json['tooltip'],
      salaryValue1: json['salaryValue1'],
      salaryValue2: json['salaryValue2'],
      salaryType: json['salaryType'],
      currency: json['currency'],
      scale: json['scale'],
      largeStipendText: json['large_stipend_text'],
    );
  }
}

class Location {
  String string;
  String link;
  String country;
  String? region;
  String locationName;

  Location({
    required this.string,
    required this.link,
    required this.country,
    this.region,
    required this.locationName,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      string: json['string'],
      link: json['link'],
      country: json['country'],
      region: json['region'],
      locationName: json['locationName'],
    );
  }
}

class Label {
  List<String> labelValue;
  List<String> labelMobile;
  List<String> labelApp;
  List<String> labelsAppInCard;

  Label({
    required this.labelValue,
    required this.labelMobile,
    required this.labelApp,
    required this.labelsAppInCard,
  });

  factory Label.fromJson(Map<String, dynamic> json) {
    return Label(
      labelValue: List<String>.from(json['label_value']),
      labelMobile: List<String>.from(json['label_mobile']),
      labelApp: List<String>.from(json['label_app']),
      labelsAppInCard: List<String>.from(json['labels_app_in_card']),
    );
  }
}

class Internship {
  int id;
  String title;
  String employmentType;
  ApplicationStatusMessage applicationStatusMessage;
  String? jobTitle;
  bool workFromHome;
  String segment;
  String? segmentLabelValue;
  String? internshipTypeLabelValue;
  List<dynamic> jobSegments;
  String companyName;
  String companyUrl;
  bool isPremium;
  bool isPremiumInternship;
  String employerName;
  String companyLogo;
  String type;
  String url;
  int isInternChallenge;
  bool isExternal;
  bool isActive;
  String expiresAt;
  String closedAt;
  String profileName;
  bool partTime;
  String startDate;
  String duration;
  Stipend stipend;
  dynamic salary;
  dynamic jobExperience;
  String experience;
  String postedOn;
  int postedOnDateTime;
  String applicationDeadline;
  String expiringIn;
  String postedByLabel;
  String postedByLabelType;
  List<String> locationNames;
  List<Location> locations;
  String startDateComparisonFormat;
  String startDate1;
  String startDate2;
  bool isPpo;
  bool isPpoSalaryDisclosed;
  dynamic ppoSalary;
  dynamic ppoSalary2;
  String ppoLabelValue;
  bool toShowExtraLabel;
  String extraLabelValue;
  bool isExtraLabelBlack;
  List<dynamic> campaignNames;
  String campaignName;
  bool toShowInSearch;
  String campaignUrl;
  dynamic campaignStartDateTime;
  dynamic campaignLaunchDateTime;
  dynamic campaignEarlyAccessStartDateTime;
  dynamic campaignEndDateTime;
  List<Label> labels;
  String labelsApp;
  List<String> labelsAppInCard;
  bool isCovidWfhSelected;
  bool toShowCardMessage;
  String message;
  bool isApplicationCappingEnabled;
  String applicationCappingMessage;
  List<dynamic> overrideMetaDetails;
  bool eligibleForEasyApply;
  bool eligibleForB2BApplyNow;
  bool toShowB2BLabel;
  bool isInternationalJob;
  bool toShowCoverLetter;
  dynamic officeDays;

  Internship({
    required this.id,
    required this.title,
    required this.employmentType,
    required this.applicationStatusMessage,
    this.jobTitle,
    required this.workFromHome,
    required this.segment,
    this.segmentLabelValue,
    this.internshipTypeLabelValue,
    required this.jobSegments,
    required this.companyName,
    required this.companyUrl,
    required this.isPremium,
    required this.isPremiumInternship,
    required this.employerName,
    required this.companyLogo,
    required this.type,
    required this.url,
    required this.isInternChallenge,
    required this.isExternal,
    required this.isActive,
    required this.expiresAt,
    required this.closedAt,
    required this.profileName,
    required this.partTime,
    required this.startDate,
    required this.duration,
    required this.stipend,
    this.salary,
    this.jobExperience,
    required this.experience,
    required this.postedOn,
    required this.postedOnDateTime,
    required this.applicationDeadline,
    required this.expiringIn,
    required this.postedByLabel,
    required this.postedByLabelType,
    required this.locationNames,
    required this.locations,
    required this.startDateComparisonFormat,
    required this.startDate1,
    required this.startDate2,
    required this.isPpo,
    required this.isPpoSalaryDisclosed,
    this.ppoSalary,
    this.ppoSalary2,
    required this.ppoLabelValue,
    required this.toShowExtraLabel,
    required this.extraLabelValue,
    required this.isExtraLabelBlack,
    required this.campaignNames,
    required this.campaignName,
    required this.toShowInSearch,
    required this.campaignUrl,
    this.campaignStartDateTime,
    this.campaignLaunchDateTime,
    this.campaignEarlyAccessStartDateTime,
    this.campaignEndDateTime,
    required this.labels,
    required this.labelsApp,
    required this.labelsAppInCard,
    required this.isCovidWfhSelected,
    required this.toShowCardMessage,
    required this.message,
    required this.isApplicationCappingEnabled,
    required this.applicationCappingMessage,
    required this.overrideMetaDetails,
    required this.eligibleForEasyApply,
    required this.eligibleForB2BApplyNow,
    required this.toShowB2BLabel,
    required this.isInternationalJob,
    required this.toShowCoverLetter,
    this.officeDays,
  });

  factory Internship.fromJson(Map<String, dynamic> json) {
    return Internship(
      id: json['id'],
      title: json['title'],
      employmentType: json['employment_type'],
      applicationStatusMessage: ApplicationStatusMessage.fromJson(json['application_status_message']),
      jobTitle: json['job_title'],
      workFromHome: json['work_from_home'],
      segment: json['segment'],
      segmentLabelValue: json['segment_label_value'],
      internshipTypeLabelValue: json['internship_type_label_value'],
      jobSegments: json['job_segments'] ?? [],
      companyName: json['company_name'],
      companyUrl: json['company_url'],
      isPremium: json['is_premium'],
      isPremiumInternship: json['is_premium_internship'],
      employerName: json['employer_name'],
      companyLogo: json['company_logo'],
      type: json['type'],
      url: json['url'],
      isInternChallenge: json['is_internchallenge'],
      isExternal: json['is_external'],
      isActive: json['is_active'],
      expiresAt: json['expires_at'],
      closedAt: json['closed_at'] ?? '',
      profileName: json['profile_name'],
      partTime: json['part_time'],
      startDate: json['start_date'],
      duration: json['duration'],
      stipend: Stipend.fromJson(json['stipend']),
      salary: json['salary'],
      jobExperience: json['job_experience'],
      experience: json['experience'],
      postedOn: json['posted_on'],
      postedOnDateTime: json['postedOnDateTime'],
      applicationDeadline: json['application_deadline'],
      expiringIn: json['expiring_in'],
      postedByLabel: json['posted_by_label'],
      postedByLabelType: json['posted_by_label_type'],
      locationNames: List<String>.from(json['location_names']),
      locations: (json['locations'] as List).map((i) => Location.fromJson(i)).toList(),
      startDateComparisonFormat: json['start_date_comparison_format'],
      startDate1: json['start_date1'],
      startDate2: json['start_date2'],
      isPpo: json['is_ppo'],
      isPpoSalaryDisclosed: json['is_ppo_salary_disclosed'],
      ppoSalary: json['ppo_salary'],
      ppoSalary2: json['ppo_salary2'],
      ppoLabelValue: json['ppo_label_value'],
      toShowExtraLabel: json['to_show_extra_label'],
      extraLabelValue: json['extra_label_value'] ?? '',
      isExtraLabelBlack: json['is_extra_label_black'],
      campaignNames: json['campaign_names'] ?? [],
      campaignName: json['campaign_name'] ?? '',
      toShowInSearch: json['to_show_in_search'],
      campaignUrl: json['campaign_url'] ?? '',
      campaignStartDateTime: json['campaign_start_date_time'],
      campaignLaunchDateTime: json['campaign_launch_date_time'],
      campaignEarlyAccessStartDateTime: json['campaign_early_access_start_date_time'],
      campaignEndDateTime: json['campaign_end_date_time'],
      labels: (json['labels'] as List).map((i) => Label.fromJson(i)).toList(),
      labelsApp: json['labels_app'],
      labelsAppInCard: List<String>.from(json['labels_app_in_card']),
      isCovidWfhSelected: json['is_covid_wfh_selected'],
      toShowCardMessage: json['to_show_card_message'],
      message: json['message'] ?? '',
      isApplicationCappingEnabled: json['is_application_capping_enabled'],
      applicationCappingMessage: json['application_capping_message'] ?? '',
      overrideMetaDetails: json['override_meta_details'] ?? [],
      eligibleForEasyApply: json['eligible_for_easy_apply'],
      eligibleForB2BApplyNow: json['eligible_for_b2b_apply_now'],
      toShowB2BLabel: json['to_show_b2b_label'],
      isInternationalJob: json['is_international_job'],
      toShowCoverLetter: json['to_show_cover_letter'],
      officeDays: json['office_days'],
    );
  }
  static List<Internship> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => Internship.fromJson(json)).toList();
  }
}
