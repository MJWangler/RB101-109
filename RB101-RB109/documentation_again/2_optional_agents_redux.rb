    # Assume you have the following code: 
    # What will each of the puts statements print? 
    
    require 'date' 
    
    puts Date.new #All defaults
      #Creates a date method denoting the given Julian calander date.new(year, month, day). Could be positive or negative, never 0. If no arguments are provided the default return is: => -4712-01-01
      
      #its signature is: new([year=-4712[,month=1[,mday=1[,start=Date:ITALY]]]]) -> date
      #[] show that all of the arguments are optional. Convention is only for documentation purposes. 
      #Since the brackets are all nested, items inside the outermost bracket can only be omited if all the innermost are omitted as well. 
    
    puts Date.new(2016) #month, mday, start use defaults
      # = > 2016-01-01 - if no month or day is given, the default is January 1st or 01-01
      
    puts Date.new(2016, 5) #mday, start use defaults
      # => 2016-05-01 - May 1st, 2016
    
    puts Date.new(2016, 5, 13) #start uses defaults
      # => 2016-05-13 - May 13th, 2016
    
    puts Date.new(2016, 5, 13, Date:ITALY) #nothing defaults, 4 possible arguements are given. 
    