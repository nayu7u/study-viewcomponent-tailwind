# frozen_string_literal: true

class SidebarComponentPreview < ViewComponent::Preview
  def default
    render(SidebarComponent.new(links: "links"))
  end
end
