# тег для вставки изображений 
# изображения снабжаются классами и стилями для красивого отображения на десктопе и на мобильных
# параметры: путь к картинке, ширина (необязательно)
# {% img <путь к файлу> [ширина в процентах] %}
module Jekyll
    class InsertImageTag < Liquid::Tag

        def initialize(tag_name, text, tokens)
            super
            @params = text.split
            if @params.length == 1
                @params << "100"
            end
        end

        def render(context)
            #"#{@text} #{Time.now}"
            src = @params.shift
            width = @params.shift
            img_class = @params.join(" ")
            %Q!<img src="#{src}" style="max-width: #{width}%; height: auto;" class="#{img_class}"/>!
        end
    end
end

Liquid::Template.register_tag('img', Jekyll::InsertImageTag)
