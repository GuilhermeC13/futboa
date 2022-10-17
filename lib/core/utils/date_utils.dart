String matchTime(String date) {
  var parsedDate = DateTime.parse(date);
  String matchTime =
      '${parsedDate.subtract(const Duration(hours: 3)).hour}:${parsedDate.minute.toString().padLeft(2, '0')}';
  return matchTime;
}
