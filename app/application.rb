class Application
 
    def call(env)
      resp = Rack::Response.new
   
      noon = Time.parse "12:00 pm"
      compare = noon < Time.now
      if compare
        resp.write "Good Afternoon!"
      else
        resp.write "Good Morning!"
      end
   
      resp.finish
    end
   
  end