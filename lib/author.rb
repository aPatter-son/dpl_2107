class Author
  attr_reader :first_name, :last_name, :books

  def initialize(details)
    @first_name = details[:first_name]
    @last_name  = details[:last_name]
    @books = []
  end

  def name
    "#{@first_name} #{@last_name}"
  end

  def write(title, publish_date)
    @title = {
      :title[titles],
      :publication_date[publication_dates]
    }
  end
end
