  # https://docs.ruby-lang.org/en/2.5.0/syntax/calling_methods_rdoc.html#label-Default+Positional+Arguments

  #Consider the following method and a call to that method: 

  def my_method(a, b = 2, c = 3, d)
    p [a, b, c, d]
  end 

  my_method(4, 5, 6)

  #Use the ruby documentation to determine what this code will print 

  #Arguments may have default values, default does not need to appear first... but arguments with defaults must be grouped together or syntaxERROR. 

  # => [4, 5, 3, 6] 


  # The example from the documentation shows 

  def my_method (a, b = 2, c = 3, d)
    p [a, b, c, d]
  end 

  my_method(1, 5, 6)

  # => [1, 5, 3, 6]

  #  First 1 is assigned to a, then 6 is assigned to d. Since 5 has not yet been assigned a value it is given to b and c uses its default value of 3. 