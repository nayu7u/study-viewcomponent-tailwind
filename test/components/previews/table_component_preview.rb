# frozen_string_literal: true

class TableComponentPreview < ViewComponent::Preview
  def default
    render(
      TableComponent.new(
        headers: %w[Product\ name Color Category Price],
        columns: [
          %w[Apple\ MacBook\ Pro\ 17 Silver Laptop $2999],
          %w[Microsoft\ Surface\ Pro White Laptop\ PC $1999],
          %w[Magic\ Mouse\ 2 Black Accessories $99],
        ],
      )
    )
  end
end
