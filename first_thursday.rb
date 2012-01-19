#!/usr/bin/ruby -w

t = Time.new
month = Time.now.month + 1
if (month == 13)       # Check if the month is december, if so set month = 2 as it will be next year
  month = 2
end 

w = Time.now.wday
time1 = Time.now() + (4-w)* 3600* 24 # Adding days to change it to thursday

while time1.month != month 
	time1 += 7* 3600* 24
end 
t=time1.strftime("%A,%B%e,%Y") # fromatting the date
puts t.to_s # Printing the first thursday in the formatted output
	