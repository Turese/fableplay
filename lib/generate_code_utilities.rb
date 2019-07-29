#thanks to https://www.rubyguides.com/2015/03/ruby-random/
def generate_code()
  charset = Array('A'..'Z') + Array('a'..'z')
  Array.new(20) { charset.sample }.join
end