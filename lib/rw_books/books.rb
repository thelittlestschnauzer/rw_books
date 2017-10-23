class RwBooks::Books

  attr_accessor :title, :author, :url

  def self.this_month
    doc = Nokogiri::HTML(open(https://www.goodreads.com/group/show/209532-rw-bookclub))

    books = {}

    doc.css("div.Title a.bookTitle").each do |book|
      books = {
        :books => doc.css("a.bookName").text
      }
    end
    books
  end



end
