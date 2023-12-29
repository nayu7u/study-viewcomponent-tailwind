# frozen_string_literal: true

class TableComponent < ViewComponent::Base
  def initialize(headers:, columns:)
    @headers = headers
    @columns = columns
  end

end
