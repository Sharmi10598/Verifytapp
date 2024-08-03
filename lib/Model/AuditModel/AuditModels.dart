class AuditModelList {
  String description;
  String percentage;
  String status;
  String auditby;
  String location;
  String scheduleDate;
  String unit;
  AuditModelList(
      {required this.auditby,
      required this.description,
      required this.location,
      required this.percentage,
      required this.scheduleDate,
      required this.status,
      required this.unit});
}
