require 'font_awesome-sass/view_helper'

module FontAwesomeSass
  module Rails
    class Engine < ::Rails::Engine
      ActionView::Base.send :include, ::FontAwesomeSass::ViewHelper
    end
  end
end