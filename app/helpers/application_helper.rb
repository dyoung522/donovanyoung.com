# ApplicationHelper
module ApplicationHelper
  def markdown(input)
    MarkdownParser.new(input).to_html
  end
end
