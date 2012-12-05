module FontAwesomeSass
  module ViewHelper
    def awesome_icon name, *args, &block
      hash = the_awesome_icon name, *args, &block
      options = hash[:options]
      content = hash[:content].html_safe
      content = ' ' + content unless content.empty? || content[0] == '<'
      content_tag(:i, nil, options) + content
    end

    def awesome_btn *args, &block
      options = args.extract_options!
      size = options[:size] if options[:size]
      type = options.delete(:type) if options[:type]
      text = options.delete(:text) if options[:text]
      text ||= args.last if args.last.kind_of?(String)

      clazz = "btn"
      clazz << " btn-#{size}" if size && %w{large small}.include?(size.to_s)
      clazz << " btn-#{type}" if type && %w{primary}.include?(type.to_s)

      href = options.delete(:href) || '#'
      content = block_given? ? capture(&block) : text

      content_tag :a, {}.merge(class: clazz, href: href).merge(options[:btn] || {}) do
        content        
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

    protected

    def the_awesome_icon name, *args, &block
      options = args.extract_options!
      size = options.delete(:size) if options
      content = args.first unless args.blank?
      content ||= capture(&block) if block_given?
      content ||= ''

      name = name.to_s.dasherize
      name.gsub! /^icon-/, ''

      clazz = "icon-#{name}"
      clazz << " icon-#{size}" if size.to_s == 'large'
      clazz << " " << options.delete(:class) if options[:class]

      options.merge!(:class => clazz)

      {options: options, content: content}
    end    
  end
end