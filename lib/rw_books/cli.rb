class RWBooks::CLI

  def call
    puts "Here are the books Reese Witherspoon is reading this month:"
    list_books
  end

  def list_books
    @books = RWBooks::Scraper.this_month

  end

end
