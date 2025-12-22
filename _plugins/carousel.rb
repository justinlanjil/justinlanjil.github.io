module Jekyll
  class Carousel < Liquid::Tag

    # I don't need text, that's just an example?
    # idk
    # the "input" here is the object

    # {% capture image_1 %}
    # {% endcapture %}

    # example input with params:
    # {% carousel id:"id" images:"[{]}]"}

    # https://rubyresource.com/ruby-blocks

    # So the issue is still that images has a bunch of nested parameters and therefore I need a hash/dictionary
    # hmm
    # workaround to make a fake dictionary:

    # https://stackoverflow.com/questions/67691445/how-to-create-or-define-a-dictionary-in-liquid-templates
    def initialize(tag_name, input, tokens)
      super
      @input = input # I think that this is the params?
    end

    # Using literal syntax with symbol keys
    person = { name: 'Alice', age: 30, city: 'New York' }

    # Iterating over each key-value pair
    person.each do |key, value|
        puts "#{key}: #{value}" # note: "puts" is the same as "print" so I don't need that
    end

    # copied from figure plugin...
    attributes = {}
    # idk what this is doing
    markup.scan(Liquid::TagAttributes) do |key, value|
        attributes[key] = value
    end

    # carousel params
    @id = attributes["id"] #string
    @images = attributes["images"] #dictionary
    @controls = attributes["controls"] # bool

    # attributes/params (these are for an image though), so how do I nest them?
    @url = attributes["url"]
    @interval = attributes["interval"]
    @label = attributes["label"]
    @caption = attributes["caption"]

    #caption attributes (belongs to image)
    @title = attributes["title"]
    @body = attributes["body"]

    unless @controls.nil?
       # render caption
    end

    # add carousel html here
    def render(context)
      "#{@input} #{Time.now}"
    end
  end
end

Liquid::Template.register_tag('carousel', Jekyll::Carousel)

# This is not the content that I want obviously but it's a starting point
# lord I'm rusty on Ruby
# Render is where I can insert the HTML I think?

# From Jekyll docs: https://jekyllrb.com/docs/plugins/tags/

# so @text is input (changed it in example)

# <p>{% render_time page rendered at: %}</p>
# output: <p>page rendered at: Tue June 22 23:38:47 –0500 2010</p>

# so how do I set params?

# render would be where I put the html code I think?

# Gotta look up some Ruby basics, essentially

# but this looks to be identical to building a React component. Which I can do!