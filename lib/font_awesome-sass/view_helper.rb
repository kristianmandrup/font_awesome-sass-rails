module FontAwesomeSass
  module ViewHelper
    def awesome_icon name, *args, &block
      options = args.extract_options!
      size = options[:size] if options 
      content = args.first unless args.blank?
      content ||= capture(&block) if block_given?
      content ||= ''

      clazz = "icon-#{name}"
      clazz << " icon-#{size}" if size.to_s == 'large'

      content_tag(:i, nil, :class => clazz) + content.html_safe
    end
  end
end