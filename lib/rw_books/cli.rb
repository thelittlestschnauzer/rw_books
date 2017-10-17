class RwBooks::CLI #this is charge of user interation

  def call
    puts "See what the Reese Witherspoon Book Club is currently reading:"
    list_books
      #this method should list the four books the group is working on within the four week period
    select_book
    #this method will have the user select the book they want to learn more about
    bye_book
    #this method will say bye to the user when they exit
  end

  def list_books
    #this method will list the four books the group is reading
    puts <<-DOC
      1. Slightly South of Simple
      2. The Life She was Given
      3. A Stranger in the House
      4. The Rules of Magic
      DOC
  end

  def select_book
    while input = nil || input != "exit"
      puts "Enter the number of the book to learn more about it or type 'exit', or type 'list' to see the book titles again."
    input = gets.strip.downcase
    #puts "Enter the number of the book to learn more about it."
    case input
      when "1"
        puts "More information on book 1"
      when "2"
        puts "More information on book 2"
      when "3"
        puts "More information on book 3"
      when "4"
        puts "More information on book 4"
      when "list"
        list_books
    end
  end
end

  def bye_book
    puts "Come back in a week to find out what new book we are reading!"
  end

end
