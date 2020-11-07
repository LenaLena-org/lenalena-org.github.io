module Jekyll
  class AudioDurationBlock < Liquid::Block

    def initialize(tag_name, markup, tokens)
      super
    end

    def render(context)
	  `mp3info -p "%m:%02s" #{super}`
    end
  end
end

Liquid::Template.register_tag('audioduration', Jekyll::AudioDurationBlock)
