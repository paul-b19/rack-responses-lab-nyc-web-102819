# require 'date'

class Application
 
  def call(env)
    resp = Rack::Response.new
    if time_check < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end

  def time_check
    Time.now.hour
  end
   
end