class Application

  @@items = ["Apples","Carrots","Pears"]
  @@cart = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      @@items.each do |item|
        resp.write "#{item}\n"
      end
    elsif req.path.match(/search/)
      search_term = req.params["q"]
      resp.write handle_search(search_term)
    elsif req.path.match(/cart/)
      @@cart.each do |item_in_cart|
        resp.write "#{item_in_cart}\n"
      end
    elsif req.path.match(/add/)
      add_to_cart = 
      resp.write GET"#{item}\n"
    else
      resp.write "Path Not Found"
    end

    resp.finish
  end

  def handle_search(search_term)
    if @@items.include?(search_term)
      return "#{search_term} is one of our items"
    else
      return "Couldn't find #{search_term}"
    end
  end
  
  def add_to_cart(item_to_add)
    item_to_add = gets.strip
    if @@items.include?(item_to_add) == TRUE
      @@cart << item_to_add
    else
      
    end
  end
end