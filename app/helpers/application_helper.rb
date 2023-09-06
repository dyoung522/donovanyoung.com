# ApplicationHelper
module ApplicationHelper
  include BetterHtml::Helpers

  def markdown(input)
    MarkdownParser.call(input)
  end
end
