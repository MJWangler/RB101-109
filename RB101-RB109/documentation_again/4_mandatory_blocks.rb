  #The Array#bsearch method is used to search ordered Arrays faster than #find and #select can. Assume you have the following code: 

  a = [1, 4, 8, 11, 15, 19]

  #How would you search this Array to find the first element whose value exceeds 8? 
  #bsearch {|x| block} -> elem. TAKES 1 ARGUMENT (THE BLOCK) AND RETURNS AN ELEMENT OF THE ARRAY TO WHICH IT IS APPLIED. 

  a.bsearch {|x|  x > 8} 

  #Binary search finds a value from the array which meets the given condition in O(log n) where n is the size of the array. 
  #Find-minimum mode or find-any mode (above). Elements of the array must be monotone (sorted) with respect to the block. 
  
  #Find-minimum mode: returns false for any element whose index is less than i and returns true for any element whose index is greater than or equal to i. 

  #Find-any mode: block must always return a number, and there must be two indices i and j. (0 <= i <= j <= a.size) so that
  
  #the block returns a postiive number for a if 0 <= k < i 
  #the block returns zero for a if i <= k < j 
  #the block returns a negative number for a if j <= k < a.size 

  

  