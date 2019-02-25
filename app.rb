
class App < Roda 

  route do |r|

    r.root do 
      r.redirect "https://scottw.com"
    end

    r.on "create", method: [:get, :post] do 
      Counter.create
    end

    r.on "incr", String, method: [:get, :post] do |id|

      r.is Integer do |by|
        Counter.incr_by(id, by).to_s
      end

      r.is do 
        Counter.incr_by(id, 1).to_s
      end
    end

    r.on "next", String, method: [:get, :post] do |id|
      counter = Counter.incr_by(id, 1)
      Base32::Crockford.encode(counter).downcase
    end
  end
end
