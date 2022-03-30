def to_camel_case(str)
  arr = str.split(/-|_/)
  arr.length.zero? ? "" : arr[0] + arr[1..-1].map { |s| s.capitalize }.join
end