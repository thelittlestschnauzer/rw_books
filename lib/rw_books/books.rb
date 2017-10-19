class RwBooks::Books

  attr_accessor :name, :author, :url

  def self.this_month
    self.scrape_books
  end

  def self.scrape_books
    books = []

    books << self.scrape_goodreads

    #Go to goodreads Rw Book Club to get books
    #extract the information
    #instantiate a new book


    #[book_1, book_2, book_3, book_4]
  end

  def self.scrape_goodreads
    doc = Nokogiri::HTML(open("https://www.goodreads.com/group/show/209532-rw-bookclub"))

    book = self.new
    book.name = doc.search("a.bookTitle").text
    book.author = doc.search("a.authorName").text
    book.url = doc.search("a.bookTitle").first.attr("href")

    book 
  end

end
