class Item
  attr_reader :item

  def initialize(text)
    @text = text

    setup
  end

  def setup
    @item = Element.new('div.row')
    @item.html = html

    @item.find('.close').on(:click) { @item.remove }
  end

  def html
    "<div class='card'><p>" +
      @text +
      "</p><a class='close'>x</a></div>"
  end
end
