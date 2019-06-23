class Application
  @@items = [Item.new("Figs", 3.42),
    Item.new("Pears", .99)]
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    if req.path.match(/items/)
      item_name = req.path.split("/items/").last
    else
      resp.write "Route not found"
      resp.status = 404
    end 
    
    resp.finish
  end 
  
end


 def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
 
    if req.path=="/songs"
      resp.write "You requested the songs"
    else
      resp.write "Route not found"
      resp.status = 404
    end
 
    resp.finish
  end
end
 