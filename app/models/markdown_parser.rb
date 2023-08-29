class MarkdownParser
  require "redcarpet"

  def initialize(markdown)
    @markdown = markdown
    @options = {
      fenced_code_blocks: true,
      disable_indented_code_blocks: true,
      no_intra_emphasis: true,
      autolink: true,
      lax_html_blocks: true,
      lax_spacing: true,
      footnotes: true,
      strikethrough: true
    }
  end

  def to_html
    processor.render(@markdown).html_safe # rubocop:disable Rails/OutputSafety
  end

  def processor
    Redcarpet::Markdown.new(renderer, @options)
  end

  def renderer
    RougeRenderer.new
  end
end
