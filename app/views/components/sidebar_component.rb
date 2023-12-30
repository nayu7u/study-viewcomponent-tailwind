# frozen_string_literal: true

class SidebarComponent < ViewComponent::Base
  def initialize(links:)
    @links = links
  end

end
