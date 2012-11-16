function cfchartDateFormat() {
  var datetime = 0;
  if (ArrayLen(Arguments) eq 0) {
    datetime = Now();
  }
  else {
    datetime = arguments[1];
  }
  return numberFormat(DateDiff("s", DateConvert("utc2Local", "January 1 1970 00:00"), datetime) * 1000);
}