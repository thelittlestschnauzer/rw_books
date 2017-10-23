class RwBooks::Scraper

  @@doc = Nokogiri::HTML(open("https://www.goodreads.com/group/show/209532-rw-bookclub"))

  def self.this_month
    if RwBooks::Books.all == []
      self.scrape_books
      RwBooks::Books.all
    else
      RwBooks::Books.all
    end
  end

  def self.this_month
     self.scrape_books
   end

   def self.scrape_books
     name = @@doc.search("a.bookTitle").text

     authors = @@doc.search("a.authorName").text

     url = @@doc.css("a.bookTitle").map { |i| i['href'].split(",")[0] }

     
   end

end







   #def self.scrape_books
    # books = []
     #doc = Nokogiri::HTML(open("https://www.goodreads.com/group/show/209532-rw-bookclub"))
  #   books << self.scrape_goodreads

    #Go to goodreads Rw Book Club to get books
    #extract the information
    #instantiate a new book
    #[book_1, book_2, book_3, book_4]
#   end
#
#   def self.scrape_goodreads
#     doc = Nokogiri::HTML(open("https://www.goodreads.com/group/show/209532-rw-bookclub"))
#
#     book = self.new
#     book.name = doc.search("a.bookTitle").text
#     book.author = doc.search("a.authorName").text
#     #book.url = doc.search("a.bookTitle").first.attr("href")
#     book
#   end
#
# end
