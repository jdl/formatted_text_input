module FormattedTextInput
  module ParseFormattedAttribute
    
    def self.included(base)
      puts "in included"
      base.extend(ClassMethods)
      
      # debugger
      
      base
    end
    
    module ClassMethods
      
      def parse_formatted_attribute #(attribute, options = {})
        # self.before_validation do |obj|
        #   unparsed = obj.send(attribute)
        #       
        #   delimiter = options.delete(:delimiter) || FormattedTextInput::CONFIG[:decimal_field_delimiter]
        #   decimal_point = options.delete(:decimal_point) || FormattedTextInput::CONFIG[:decimal_point]
        #       
        #   parsed = unparsed.gsub(delimiter, '').gsub(decimal_point, '.')
        #       
        #   obj.write_attribute(attribute, parsed)
        # end
        puts "Hi"
      end
    end
  end
  
end
