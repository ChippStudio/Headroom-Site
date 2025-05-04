class YouTube < Liquid::Tag
    Syntax = /^\s*([^\s]+)(\s+(\d+)\s+(\d+)\s*)?/
  
    def initialize(tagName, markup, tokens)
      super
  
      if markup =~ Syntax then
        @id = $1
  
        if $2.nil? then
            @width = 800
            @height = 420
        else
            @width = $2.to_i
            @height = $3.to_i
        end
      else
        raise "No YouTube ID provided in the \"youtube\" tag"
      end
    end
  
    def render(context)
      # "<iframe width=\"#{@width}\" height=\"#{@height}\" src=\"http://www.youtube.com/embed/#{@id}\" frameborder=\"0\"allowfullscreen></iframe>"
      # "<iframe width=\"#{@width}\" height=\"#{@height}\" src=\"http://www.youtube.com/embed/#{@id}?color=white&theme=light\"></iframe>"
      # "<iframe width=\"#{@width}\" height=\"#{@height}\" src=\"http://www.youtube.com/embed/#{@id}?color=white&theme=light\"></iframe>"
      " <div class=\"relative w-full pt-[56.25%] pb-2 \"><iframe class=\"absolute top-0 left-0 w-full h-full rounded-xl shadow-md pd-4\" src=\"http://www.youtube.com/embed/#{@id}?color=white&theme=light\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen> </iframe> </div>"
    end
  
    Liquid::Template.register_tag "youtube", self
  end