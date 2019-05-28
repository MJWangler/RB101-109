munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end 

mess_with_demographics(munsters) 

#Would running munsters Hash through this method ransack the data? why/why not? 

#Yes, what gets passed in the parameter list is not what it appears. Under the hood, Ruby passes the object id of each item rather than the value of the parameter. The method internally stores these object id's in locally scoped (private to the method) variable (named via the method definition's parameter list). 

#demo_hash starts off pointing to the munsters hash. Program could wind up replacing that with some other object id and then the family's data would safe. 

#In this case, program does NOT reassign demo_hash-- it uses it as is. (reference). So the actual hash object being messed up is munsters hash. 