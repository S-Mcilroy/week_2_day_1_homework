
class Library

  def initialize(array)
    @library = array
  end

  def get_book
    return @library
  end

  def get_book_details(book_name)
    for book in @library
      if book_name == book[:title]
        return book
      end
    end
  end

  def get_rental_details(book_name)
    for book in @library
      if book_name == book[:title]
        return book[:rental_details]
      end
    end
   end

  def add_book(book_name)
    new_book = {
      :title => book_name,
      rental_details: {
        student_name: "",
        date: ""
      }
    }
    @library.push(new_book)
  end

  def update_rental_details(book_to_update, new_rentee, new_date)
    new_rental = {
      :student_name => new_rentee,
      :date => new_date
    }

     for book in @library
       if book_to_update == book[:title]
         book[:rental_details].replace(new_rental)
       end
     end

  end
end
