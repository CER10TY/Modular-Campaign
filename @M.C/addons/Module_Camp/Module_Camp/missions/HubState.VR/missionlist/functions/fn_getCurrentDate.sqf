// Script to get current date, convert it to a string and post it to dialog 
// By tryteyker
// Rev 1.0 date 2016-05-01

_dateIDC = 1004;
_fullDate = date;
_day = str(_fullDate select 2);
_month = str(_fullDate select 1);
_year = str(_fullDate select 0);

_currentDate = _day + " " + _month + " " + _year;
ctrlSetText [_dateIDC,_currentDate];