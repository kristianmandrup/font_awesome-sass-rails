module FontAwesomeSass
  module ViewHelper
    def awesome_icon name, *args, &block
      options = args.extract_options!
      size = options.delete(:size) if options
      content = args.first unless args.blank?
      content ||= capture(&block) if block_given?
      content ||= ''

      clazz = "icon-#{name}"
      clazz << " icon-#{size}" if size.to_s == 'large'
      clazz << " " << options.delete(:class) if options[:class]

      content_tag(:i, nil, options.merge(:class => clazz)) + content.html_safe
    end

    def awesome_btn *args, &block
      options = args.extract_options!
      size = options[:size] if options[:size]
      type = options.delete(:type) if options[:type]

      clazz = "btn "
      clazz << " btn-#{size}" if size
      clazz << " btn-#{type}" if type && %w{primary}.include?(type.to_s)

      href = options.delete(:href) || '#'

      content_tag :a, {}.merge(class: clazz, href: href).merge(options[:btn] || {}) do
        capture(&block)
      end
    end

    def awesome_button name, *args, &block
      options = args.extract_options!
      size = options[:size] if options[:size]
      type = options.delete(:type) if options[:type]

      clazz = "btn "
      clazz << " btn-#{size}" if size
      clazz << " btn-#{type}" if type && %w{primary}.include?(type.to_s)

      href = options.delete(:href) || '#'

      content_tag :a, {}.merge(class: clazz, href: href).merge(options[:btn] || {}) do
        awesome_icon name, options, &block
      end
    end
  end
end