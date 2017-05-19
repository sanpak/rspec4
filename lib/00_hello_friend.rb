class Friend
  # your code goes here!

  def greeting(name = nil)
    return "Hello, #{name}!" unless name == nil
    return "Hello!"
  end

end
