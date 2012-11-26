require 'spec_helper'

describe FontAwesomeSass::ViewHelper do
  include ControllerTestHelpers,  
          FontAwesomeSass::ViewHelper
  
  describe 'awesome_icon' do          
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

    describe ".awesome_icon :ok, style: 'font-size: 10px'" do
      specify do
        awesome_icon(:ok, style: 'font-size: 10px').should == "<i class=\"icon-ok\" style=\"font-size: 10px\"></i>"
      end
    end

    describe ".awesome_icon :ok, class: 'topleft'" do
      specify do
        awesome_icon(:ok, class: 'topleft').should == "<i class=\"icon-ok topleft\"></i>"
      end
    end

    describe ".awesome_icon :ok, style: 'font-size: 10px', class: 'topleft'" do
      specify do
        awesome_icon(:ok, style: 'font-size: 10px', class: 'topleft').should == "<i class=\"icon-ok topleft\" style=\"font-size: 10px\"></i>"
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

  describe 'awesome_btn' do
    specify do
      res = awesome_btn do
        awesome_icon(:ok) + awesome_icon(:plus)
      end
      res.should == "<a class=\"btn\" href=\"#\"><i class=\"icon-ok\"></i><i class=\"icon-plus\"></i></a>"
    end

    specify do
      res = awesome_btn(:ok, size: 'large', type: 'primary', href: 'google.com') do
        awesome_icon(:ok) + awesome_icon(:plus)
      end
      res.should == "<a class=\"btn btn-large btn-primary\" href=\"google.com\"><i class=\"icon-ok\"></i><i class=\"icon-plus\"></i></a>"
    end
  end


  
  describe 'awesome_button' do
    describe ".awesome_button(:ok, size: 'large', type: 'primary', href: 'google.com') {'Okay :)'}" do
      specify do
        res = awesome_button(:ok, size: 'large', type: 'primary', href: 'google.com') {'Okay :)'}
        res.should == "<a class=\"btn  btn-large btn-primary\" href=\"google.com\"><i class=\"icon-ok icon-large\"></i>Okay :)</a>"
      end
    end    
  end 
end