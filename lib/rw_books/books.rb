class RwBooks::Books

  attr_accessor :title, :author, :url

  def self.this_month
    self.scrape_books
  end

  def self.scrape_books

  end


end
