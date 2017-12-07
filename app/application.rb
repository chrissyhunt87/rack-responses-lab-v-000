class Application

  def call(env)
    resp = Rack::Response.new
    timestamp = Time.now.to_i
    resp.write "#{timestamp}"
    if timestamp > 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
    resp.finish
  end

end
