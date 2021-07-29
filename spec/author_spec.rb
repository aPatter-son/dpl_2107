require './lib/book'
require './lib/author'

RSpec.describe Author do
  it 'exists' do
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    expect(charlotte_bronte).to be_a(Author)
  end

  it 'has a name' do
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    expect(charlotte_bronte.name).to eq("Charlotte Bronte")
  end

  it 'has books' do
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    expect(charlotte_bronte.books).to eq([])
  end

  it 'writes a book' do
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")


    expect(charlotte_bronte.write("Jane Eyre", "October 16, 1847")).to be_a(Books)
  end
end


# jane_eyre.class
# #=> Book
#
# jane_eyre.title
# #=> "Jane Eyre"
#
# villette = charlotte_bronte.write("Villette", "1853")
# #=> #<Book:0x00007fb8980aaca0...>
#
# charlotte_bronte.books
# #=> [#<Book:0x00007fb896e22538...>, #<Book:0x00007fb8980aaca0...>]
