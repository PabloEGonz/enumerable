module MyEnumerable
    def all?
      each {|ele| return false unless yield(ele) } 
      true
    end

    def any?
        each {|ele| return true if yield(ele) } 
        false
    end

    def filter
        new_list = []
        each {|ele| new_list << ele if yield(ele) }
        new_list
    end
end
