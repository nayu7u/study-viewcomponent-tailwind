# frozen_string_literal: true

class TableComponent < ViewComponent::Base
  def initialize(header:, column:)
    @header = header
    @column = column
  end

end
