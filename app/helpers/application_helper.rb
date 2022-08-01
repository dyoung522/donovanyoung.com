# ApplicationHelper
module ApplicationHelper
  include BetterHtml::Helpers

  def markdown(input)
    MarkdownParser.new(input).to_html
  end
end
