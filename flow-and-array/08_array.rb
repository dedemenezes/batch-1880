empty_array = []
students = ['hermione', 'ronald', 'draco']
# index          0          1        2

# READ
puts students[0]
puts students[1]
# students[array.length - 1] == students[-1] => both return the last elements
puts students[-1]

# MODIFY/UPDATE
students[2] = 'harry'

# APPEND a new element
students << 'luna'
students.push('luna')
students.insert(1, 'luna')

# DELETE/REMOVE an element
students.delete('luna')
# students.delete_at(0)

# SIZE/LENGTH
puts students.length
puts students.size

# LOOP EACH
p students
students.each do |student|
  puts student
end


# CRUD
# Create    << || push(element)
# Read      [index]
# Update    [index] = new_value
# Delete    .delete(element) || .delete_at(index)
