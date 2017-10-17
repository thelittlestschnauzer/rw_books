class RwBooks::CLI #this is charge of user interation

  def call
    puts "Here are the books Reese Witherspoon Book Club is reading this month:"
    list_books
      #this method should list the four books the group is working on within the four week period
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


end
