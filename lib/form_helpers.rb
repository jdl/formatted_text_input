module ActionView
  module Helpers
    module FormHelper
      def decimal_field(object_name, method, options = {})
        
        precision = options.delete(:precision) || FormattedTextInput::CONFIG[:decimal_field_precision]
        delimiter = options.delete(:delimiter) || FormattedTextInput::CONFIG[:decimal_field_delimiter]
                
        tag = InstanceTag.new(object_name, method, self, options.delete(:object))
        tag.to_input_field_tag("text", options.merge(:value => number_with_precision(tag.value_before_type_cast(tag.object), :delimiter => delimiter, :precision => precision)))
      end
    end
    
    class FormBuilder
      def decimal_field(method, options = {})
        @template.decimal_field(@object_name, method, options)
      end
    end
    
  end
end

