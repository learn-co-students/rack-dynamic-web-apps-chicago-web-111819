class Application

  def call(env)
    resp = Rack::Response.new

    nums = []
    for i in 1..3
      nums << Kernel.rand(1..20)
    end
 
    nums.each { |n| resp.write "#{n}\n" }
 
    if nums[0] == nums[1] && nums[1] == nums[2]
      resp.write "You Win"
    else
      resp.write "You Lose"
    end

    resp.finish
  end

end
