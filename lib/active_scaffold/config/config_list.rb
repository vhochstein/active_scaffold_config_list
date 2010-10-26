module ActiveScaffold::Config
  class ConfigList < Form
    self.crud_type = :create
    def initialize(*args)
      super
    end

    # global level configuration
    # --------------------------
    # the ActionLink for this action
    def self.link
      @@link
    end
    def self.link=(val)
      @@link = val
    end
    @@link = ActiveScaffold::DataStructures::ActionLink.new('config_list', :label => 'List columns..', :type => :collection, :security_method => :create_authorized?)

    # configures where the plugin itself is located. there is no instance version of this.
    cattr_accessor :plugin_directory
    @@plugin_directory = File.expand_path(__FILE__).match(/vendor\/plugins\/([^\/]*)/)[1]

    # instance-level configuration
    # ----------------------------
    # the label= method already exists in the Form base class
    def label
      'test' #@label ? as_(@label) : as_('Config list %s columns', @core.label.singularize)
    end
  end
end
