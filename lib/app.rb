require 'opal'
require 'opal-jquery'
require_relative 'app/item'

Document.ready? do
  list = Document.find('#list')
  form = Document.find('#form')
  text_box = form.find('input')

  form.on(:submit) do |event|
    event.prevent

    item = Item.new(text_box.value).item

    list.append item
    text_box.value = ''
  end
end
