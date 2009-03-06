# require 'formatted_text_input'
require File.dirname(__FILE__) + '/lib/formatted_text_input'



ActiveRecord::Base.send(:include, FormattedTextInput::ParseFormattedAttribute)


