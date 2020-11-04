# frozen_string_literal: true

def show_regexp(string, pattern)
  match = pattern.match(string)
  if match
    "#{match.pre_match}->#{match[0]}<-#{match.post_match}"
  else
    'no match'
  end
end

str = 'Price $12.'
p show_regexp(str, /[aeiou]/)
p show_regexp(str, /[[:digit:]]/)
p show_regexp(str, /[[:space:]]/)
p show_regexp(str, /[[:^alpha:]]/)
p show_regexp(str, /[[:punct:]aeiou]/)
