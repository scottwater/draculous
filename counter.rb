module Counter
  extend self 

  def create
    DB[:counters].insert()
  end

  def incr_by(id, by=1)
    DB.transaction(isolation: :committed) do
      DB["UPDATE Counters SET counter = (counter + ?) where id = ? Returning counter;", by, id].single_value
    end 
  end
end
