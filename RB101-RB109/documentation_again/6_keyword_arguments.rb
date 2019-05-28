  # What does this code print? 

  # https://docs.ruby-lang.org/en/2.5.0/Numeric.html#method-i-step

  =begin 
        step(by: step, to: limit) {|i| block } → self
        step(by: step, to: limit) → an_enumerator
        step(limit=nil, step=1) {|i| block } → self
        step(limit=nil, step=1) → an_enumerator
        Invokes the given block with the sequence of numbers starting at num, incremented by step (defaulted to 1) on each call.

        The loop finishes when the value to be passed to the block is greater than limit (if step is positive) or less than limit (if step is negative), where limit is defaulted to infinity.

        In the recommended keyword argument style, either or both of step and limit (default infinity) can be omitted. In the fixed position argument style, zero as a step (i.e. num.step(limit, 0)) is not allowed for historical compatibility reasons.

        If all the arguments are integers, the loop operates using an integer counter.

        If any of the arguments are floating point numbers, all are converted to floats, and the loop is executed floor(n + n*Float::EPSILON) + 1 times, where n = (limit - num)/step.

        Otherwise, the loop starts at num, uses either the less-than (<) or greater-than (>) operator to compare the counter against limit, and increments itself using the + operator.

        If no block is given, an Enumerator is returned instead.
  =end 

  
  5.step(to: 10, by: 3) { |value| puts value}
    # => 5
    #    8 

    # Keyword arguments, aka named arguments == :by = "step" value, :to = limit. 
    # Program starts at supplied number, 1st iteration returns 5. It then counts up by 3 to return 8. Since 11 > 10 the loop exits after 2 returns. 