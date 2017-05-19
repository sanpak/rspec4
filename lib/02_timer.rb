class Timer

  def initialize
    @time_string = ""
    @time = 0
  end

  def second
    @time
  end

  def seconds
    @time
  end

  def time_string
    result_string = ""
    second = @time
    minutes = (@time / 60) % 60
    hour = @time
    while second > 60
      second = second % 60
    end

    while hour > 60
      hour = hour / 60
    end
    result_string = "#{padded(hour)}:#{padded(minutes)}:#{padded(second)}"
  end

  def second= second
    @time = second
  end

  def seconds= second
    @time = second
  end

  def padded(digit)
    if digit.to_s.length > 1
      return digit.to_s
    else
      return "0#{digit.to_s}"
  end
end

#describe "padded" do
#   it "pads zero" do
#     expect(@timer.padded(0)).to eq("00")
#   end
#   it "pads one" do
#     expect(@timer.padded(1)).to eq("01")
#   end
#   it "doesn't pad a two-digit number" do
#     expect(@timer.padded(12)).to eq("12")
#   end
# end
