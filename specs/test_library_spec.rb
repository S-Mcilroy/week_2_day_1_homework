require ('minitest/autorun')
require ('minitest/reporters')
require_relative('../library.rb')
Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestLibrary < MiniTest::Test

  def setup

    @library = Library.new([
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      },
      {
        title: "harry_potter",
        rental_details: {
          student_name: "Sarah",
          date: "05/01/17"
        }
      }
      ])

    end

    def test_get_book
      assert_equal([
        {
          title: "lord_of_the_rings",
          rental_details: {
            student_name: "Jeff",
            date: "01/12/16"
          }
        },
        {
          title: "harry_potter",
          rental_details: {
            student_name: "Sarah",
            date: "05/01/17"
          }
        }
        ], @library.get_book)
      end

      def test_get_book_details
        assert_equal({
          title: "lord_of_the_rings",
          rental_details: {
            student_name: "Jeff",
            date: "01/12/16"
          }
          }, @library.get_book_details("lord_of_the_rings"))
      end

      def test_get_rental_details
        assert_equal({
          student_name: "Jeff",
          date: "01/12/16"
          }, @library.get_rental_details("lord_of_the_rings"))
      end

      def test_add_book
        @library.add_book("sherlock_holmes")
        assert_equal({
          title: "sherlock_holmes",
          rental_details: {
            student_name: "",
            date: ""
          }
          }, @library.get_book_details("sherlock_holmes"))
      end

      def test_update_rental_details
        @library.update_rental_details("harry_potter", "Steven", "13/01/20")
        assert_equal({
                title: "harry_potter",
                rental_details: {
                  student_name: "Steven",
                  date: "13/01/20"
                }
                }, @library.get_book_details("harry_potter"))
      end
end
