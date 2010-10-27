# Need to open the AS module carefully due to Rails 2.3 lazy loading
ActiveScaffold::Helpers::ViewHelpers.module_eval do
      # Add the cf_as plugin includes
      def active_scaffold_includes_with_cf_as(frontend = :default)
        css = stylesheet_link_tag(ActiveScaffold::Config::Core.asset_path('cf_as-stylesheet.css', frontend))
        ie_css = stylesheet_link_tag(ActiveScaffold::Config::Core.asset_path("cf_as-stylesheet-ie.css", frontend))
        active_scaffold_includes_without_cf_as + "\n" + css + "\n<!--[if IE]>".html_safe + ie_css + "<![endif]-->\n".html_safe
      end
      alias_method_chain :active_scaffold_includes, :cf_as

      def config_list_ol_id
        "ol_#{element_form_id(:action => :config_list)}"
      end

      def config_list_sort_params
        options = {
          :tag => 'li'
        }
        additional_params = [:parent_controller, :eid, :controller].reject {|param| params[param].blank?}
        options[:with] = additional_params.inject(options[:with]) do |string, param|
          "#{string} + '&#{param}=' + encodeURIComponent('#{escape_javascript params[param]}')"
        end
        [config_list_ol_id, options]
      end
end
