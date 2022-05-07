module ApplicationHelper
  def markdown(input)
    md_output = MarkdownParser.new(input).to_html

    raw "<div class='prose dark:prose-invert max-w-none'>#{md_output}</div>"
  end
end
