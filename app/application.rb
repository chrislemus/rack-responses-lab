class Application
  def call(env)
    current_hr = Time.now.strftime("%H").to_i 
    greeting = current_hr >= 12 ? "Good Afternoon!" : "Good Morning!"
    resp = Rack::Response.new

    resp.write "#{greeting}"

    resp.finish
  end
end