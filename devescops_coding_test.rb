class ArrayOperations
  def self.combine_array(set_one = [], set_two = [])
    result = []
    #array indices
    one_i = 0
    two_i = 0
    #loop through both arrays until the end of either
    while one_i < set_one.length && two_i < set_two.length
      #check for the lowest array value per array
      if set_one[one_i] < set_two[two_i]
        result.push(set_one[one_i])
        one_i += 1
      elsif set_one[one_i] > set_two[two_i]
        result.push(set_two[two_i])
        two_i += 1
      else
        result.push(set_one[one_i])
        result.push(set_two[two_i])
        two_i += 1
        one_i += 1
      end
    end
  
    #finish looping through both to grab the rest of the values
    while one_i < set_one.length
      result.push(set_one[one_i])
      one_i += 1
    end

    while two_i < set_two.length
      result.push(set_two[two_i])
      two_i += 1
    end
    result
  end
end
