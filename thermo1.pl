weekend:- day(saturday);day(sunday).
workday:- not(weekend).
holidays:- day(friday), month(august).
business_hours:- workday,time(X),X>=9,X=<17,not(holidays). 
closed:- not(business_hours).
summer:- month(june);month(july);month(august).
fall:- month(september);month(october);month(november).
winter:- month(december);month(january);month(february).
spring:- month(march);month(april);month(may).
setting(X):- fall, business_hours ,X=70.
setting(X):- spring, business_hours ,X=70.
setting(X):- fall, closed ,X=50.
setting(X):- spring, closed ,X=50.
setting(X):- winter, business_hours	,X=68.
setting(X):- winter, closed	,X=45.
setting(X):- summer, business_hours	,X=74.
setting(X):- summer, closed	,X=85.
month(february).
day(friday).
time(24).