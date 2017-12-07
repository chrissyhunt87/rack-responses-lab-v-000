class Application

  def call(env)
    resp = Rack::Response.new
    timestamp = ???
    if timestamp < noon
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end

end
