require 'spec_helper'

describe FontAwesomeSass::ViewHelper do
  include ControllerTestHelpers,  
          FontAwesomeSass::ViewHelper

  describe ".awesome_icon :ok, 'Okay :)'" do
    specify do
      awesome_icon(:ok).should == "<i class=\"icon-ok\"></i>"
    end
  end

  describe ".awesome_icon :ok, 'Okay :)'" do
    specify do
      awesome_icon(:ok, size: :large).should == "<i class=\"icon-ok icon-large\"></i>"
    end
  end

  # <i class="icon-ok"></i>Okay :)
  describe ".awesome_icon :ok, 'Okay :)'" do
    specify do
      awesome_icon(:ok, 'Okay :)').should == "<i class=\"icon-ok\"></i>Okay :)"
    end
  end

  describe ".awesome_icon(:ok) {'Okay :)'}" do
    specify do
      awesome_icon(:ok) { 'Okay :)'}.should == "<i class=\"icon-ok\"></i>Okay :)"
    end
  end
end