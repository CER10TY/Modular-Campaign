// Script to get current date, convert it to a string and post it to dialog 
// By tryteyker
// Last rev date 2016-05-09

_dateIDC = 1004;
_fullDate = date;
_day = str(_fullDate select 2);
_month = str(_fullDate select 1);
_year = str(_fullDate select 0);

_currentDate = _day + " " + _month + " " + _year; // Format date into an almost proper one. It says 23 5 2036 instead of 23(rd) May 2036. Will probably get fixed later.
ctrlSetText [_dateIDC,_currentDate];