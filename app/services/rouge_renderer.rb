class RougeRenderer < Redcarpet::Render::HTML
  require "rouge"
  require "rouge/plugins/redcarpet"

  include Rouge::Plugins::Redcarpet
end
