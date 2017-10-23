class RwBooks::Books

  attr_accessor :name, :author, :url

  @@book_list = []

  def initialize(attributes = {})
    @name = attributes[:name]
    @author = attributes[:author]
    @url = attributes[:url]
    @@book_list << self
  end

  def self.all
    @@book_list
  end

end


  
