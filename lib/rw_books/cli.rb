class RwBooks::CLI #this is charge of user interation

    def call
      list_books
    end

    def list_books
      puts "Welcome to the Reese Witherspoon Book Club! Here is a list of the books we are currently reading:"
      #going to want this to scrape the books from the website and list here hoping the below code will be correct but not sure yet
      # @books = RwBooks::Books.this_month
      # @books.each.with_index do |book, i|
      #   puts "#{i}. #{"book.title"} - by #{book.author}"
      # end
    end

end
