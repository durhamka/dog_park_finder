class Search

  def address
  end

  # ActiveModel boilerplate
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  def persisted?
    false
  end
end
