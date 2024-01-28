# frozen_string_literal: true

# Sort integer arguments (ascending)
result = []
ARGV.each do |arg|
  # Skip if not integer
  next unless arg.match?(/^-?[0-9]+$/)

  # Convert to integer
  i_arg = arg.to_i

  # Insert result at the right position
  is_inserted = false
  i = 0
  l = result.size
  while !is_inserted && i < l
    if result[i] < i_arg
      i += 1
    else
      result.insert(i, i_arg)
      is_inserted = true
      break
    end
  end
  result << i_arg unless is_inserted
end

puts result
