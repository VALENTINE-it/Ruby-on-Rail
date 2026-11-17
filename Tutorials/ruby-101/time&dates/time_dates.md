## The Ruby Time Class
You can use the Time class in Ruby to represent a time & date.

This date has three components:

day
month
year
And time:

hours
minutes
seconds
This information is stored by the Time class as the number of seconds since the Epoch, also known as Unix time.

# There are a few ways to initialize a Time object:

You can get an object that represents the current time using Time.now
You can create a Time object using an Unix timestamp & the at method
You can give the starting date in numbers to Time.new (format: year/month/day)

# Example: 

Time.now
# 2018-10-19 15:43:20 +0200

Time.new(2018, 1, 1)
# 2018-01-01 00:00:00 +0100

Time.at(15000000000)
# 2017-07-14 04:40:00 +0200

You can ask a time object for any of its components.

For example…

You can ask what day, month or hour a time object is representing:

t = Time.now

puts t.day
puts t.month
puts t.hour

In addition, you can also ask if this date corresponds to a certain day of the week.

For example:

“Is this date a Sunday?”.

These are predicate methods, they will return either true or false.

Example:

t = Time.now

puts t.monday?
puts t.sunday?
puts t.friday?

## Time Zones
A Time object has a time zone associated with it.

You can check the current time zone for a Time object using the zone method.

This will give you the time zone abbreviation.

If you want the time zone offset you can use the utc_offset method. The output for this method is in seconds, but you can divide by 3600 to get it in hours.

Example:

t = Time.now

t.zone
# "CET"

t.utc_offset / 3600
# 1

## Ruby Time Formatting

Ruby formats Time objects in a specific way by default.

But you may want something else.

Something that adapts to your use case.

Good news!

You can use a method to get almost any format you need.

This method is strftime, which basically means ‘format time’.

It works by passing a string with format specifiers, these specifiers will be replaced by a value. If you have ever used the printf method the idea is very similar to that.

Let’s see some examples:

time = Time.new
time.strftime("%d/%m/%Y")        # "05/12/2015"
time.strftime("%k:%M")           # "17:48"
time.strftime("%I:%M %p")        # "11:04 PM"
time.strftime("Today is %A")     # "Today is Sunday"
time.strftime("%d of %B, %Y")    # "21 of December, 2015"
time.strftime("Unix time is %s") # "Unix time is 1449336630"
As you can see, this method is very flexible. You can get the time without the date, or a nicely formatted date with the year, day & name of the current month.

## Strftime Format Table

Format	Description
%d	Day of the month (01..31)
%m	Month of the year (01..12) Use %-m for (1..12)
%k	Hour (0..23)
%M	Minutes
%S	Seconds (00..60)
%I	Hour (1..12)
%p	AM/PM
%Y	Year
%A	Day of the week (name)
%B	Month (name)

Rem to Check:
`https://www.rubyguides.com/2015/12/ruby-time/`