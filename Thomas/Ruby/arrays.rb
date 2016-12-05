@days_of_the_week = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']

@days_of_the_week.insert(0, @days_of_the_week.delete_at(6))

@arrays_of_the_week = [['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'], ['Saturday', 'Sunday']]

@arrays_of_the_week.pop
# @arrays_of_the_week[1].delete("Saturday")
# @arrays_of_the_week[1].delete("Sunday")
@arrays_of_the_week.first.sort!


def alphabetize arr
    arr.sort
end


puts alphabetize ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday']
