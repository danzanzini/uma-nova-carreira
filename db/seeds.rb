module BRPopulate
  def self.states
    http = Net::HTTP.new('raw.githubusercontent.com', 443); http.use_ssl = true
    JSON.parse http.get('/celsodantas/br_populate/master/states.json').body
  end

  def self.populate
    states.each do |state|
      state_obj = State.new(:acronym => state["acronym"], :name => state["name"])
      state_obj.save
      
      state["cities"].each do |city|
        c = City.new
        c.name = city
        c.state = state_obj
        c.save
      end
    end
  end
end

BRPopulate.populate