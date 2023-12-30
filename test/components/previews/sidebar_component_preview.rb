# frozen_string_literal: true

class SidebarComponentPreview < ViewComponent::Preview
  def default
    render(
      SidebarComponent.new(
        links: [
          ["Google", "https://www.google.co.jp/"],
          ["Amazon", "https://www.amazon.co.jp/"],
          ["Facebook", "https://www.facebook.com/"],
          ["Apple", "https://www.apple.com/"],
        ],
      )
    )
  end
end
