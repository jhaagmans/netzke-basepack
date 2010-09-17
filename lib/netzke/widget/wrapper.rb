module Netzke::Widget
  # = Wrapper
  # 
  # Simple Ext.Panel with layout 'fit' that wraps up another Netzke widget. Can be useful in HTML pages where
  # a widget should be dynamically configured, to not reload the entire page after configuration (Wrapper 
  # will reload the widget automatically).
  # 
  # == Configuration
  # * <tt>:item</tt> - configuration hash for wrapped widget
  # 
  # Example:
  # 
  #   netzke :wrapper, :item => {
  #     :class_name => "FormPanel",
  #     :model => "User"
  #   }
  class Wrapper < Base
    include Container
    
    def self.js_properties
      super.merge({
        :layout => 'fit',
        
        # invisible
        :header => false,
        :border => false,
      })
    end
    
  end
end