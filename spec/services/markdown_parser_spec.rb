require "rails_helper"

RSpec.describe MarkdownParser do
  subject { described_class.call(markdown) }

  let(:markdown) { "# Hello\n- one\n- two\n" }
  let(:instance) { described_class.new(markdown) }

  it { is_expected.to eq("<h1>Hello</h1>\n\n<ul>\n<li>one</li>\n<li>two</li>\n</ul>\n") }

  describe "#markdown_options" do
    it { expect(instance.markdown_options).to eq(described_class::DEFAULT_MARKDOWN_OPTIONS) }

    it "merges default options with custom options" do
      expect(described_class.new(markdown, options: { autolink: true }).markdown_options)
        .to eq(described_class::DEFAULT_MARKDOWN_OPTIONS.merge(autolink: true))
    end
  end
end
