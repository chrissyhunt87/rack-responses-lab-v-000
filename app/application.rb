class Application

  def call(env)
    resp = Rack::Response.new
    timestamp = Time.now.to_i
    if timestamp > 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
    resp.finish
  end

end
