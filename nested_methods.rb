
fname = "adam"
lname = "booth"

def fname_reverser(fname)
    fname_reverse = fname.reverse
end

def lname_reverser(lname)
    lname_reverse = lname.reverse
end

def reverse_name_combiner(fname, lname)
    reversed_fname = fname_reverser(fname)
    return reversed_fname
    reversed_lname = lname_reverser(lname)
    reversed_fullname = reversed_fname + reversed_lname

    puts fname
    puts lname

    puts reversed_fname
    puts reversed_lname

    puts reversed_fullname
end

reverse_name_combiner(fname, lname)

puts fname
puts lname
puts reversed_fname
