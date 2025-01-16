# lib/fat_free_crm/overrides/version_manager.rb
module FatFreeCRM
  module Overrides
    class VersionManager
      def self.adjust_dependencies(spec)
        spec.instance_eval do
          dependencies.reject! { |d| d.name == 'rails' }
          add_dependency 'rails', '>= 5.1', '< 7.1'

          # Update other critical gems
          dependencies.reject! { |d| d.name == 'paper_trail' }
          add_dependency 'paper_trail', '>= 6.0'

          dependencies.reject! { |d| d.name == 'ransack' }
          add_dependency 'ransack', '>= 1.7'
        end
      end
    end
  end
end
