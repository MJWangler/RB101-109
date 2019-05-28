  # Locate the ruby documentation for methods File::path and File#path. How are they different? 

  https://docs.ruby-lang.org/en/2.5.0/File.html#method-c-path 

  # File::path is a class method, thus it is to be called on the class. This method returns the string representation of the path. (Path in string form)


  https://docs.ruby-lang.org/en/2.5.0/File.html#method-i-path
  
  # File#path is an instance method, instance methods are called on objects. This method also returns the string representation fo the path however, this method will raise an IOError for files that lack a pathname. 


  