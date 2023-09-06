class MarkdownParser < ApplicationService
  require "redcarpet"

  DEFAULT_MARKDOWN_OPTIONS = {
    fenced_code_blocks: true,
    disable_indented_code_blocks: true,
    no_intra_emphasis: true,
    autolink: true,
    lax_html_blocks: true,
    lax_spacing: true,
    footnotes: true,
    strikethrough: true
  }.freeze

  attr_reader :markdown, :markdown_options

  def initialize(markdown, options: {})
    @markdown = markdown
    @markdown_options = DEFAULT_MARKDOWN_OPTIONS.merge(options)
  end

  def call
    processor.render(markdown).html_safe # rubocop:disable Rails/OutputSafety
  end

  private

  def processor
    Redcarpet::Markdown.new(renderer, markdown_options)
  end

  def renderer
    RougeRenderer.new
  end
end
