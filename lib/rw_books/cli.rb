class RwBooks::CLI #this is charge of user interation

    def call
      list_books
        #this method should list the four books the group is working on within the four week period
      select_book
      #this method will have the user select the book they want to learn more about
    end

    def list_books
      puts "See what books the Reese Witherspoon Book Club is currently reading:"
      #this method will list the four books the group is reading - will be scraped
      @books = RwBooks::Books.this_month
      @books.each_with_index do |book, index|
        puts "#{index+1}. #{book.name} by #{book.author}"
      end
    end


    def select_book
      while input = nil || input != "exit"
        puts "Enter the number of the book to learn more about that title or type 'list' to see the book titles again, or type 'exit'."
      input = gets.strip.downcase

      if input.to_i > 0
        the_book = @books[input.to_i-1]
        puts "#{the_book.url}"
      elsif input == "list"
        list_books
      elsif input == "exit"
        exit_book
      else
        puts "Sorry that was not a valid response, please type a number, 'list', or 'exit'."
      end
    end
  end

    def exit_book
      puts "Come back in a week to find out what new book has been added to the list!"
    end
  end
