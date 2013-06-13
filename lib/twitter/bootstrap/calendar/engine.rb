require 'rails'

require File.dirname(__FILE__) + '/../../../../app/helpers/bootstrap_calendar_helper.rb'

module Twitter
  module Bootstrap
    module Calendar
      class Engine < ::Rails::Engine
        initializer 'twitter-bootstrap-calendar.action_controller' do |app|
          ActiveSupport.on_load :action_controller do
            helper BootstrapCalendarHelper
          end
        end
        initializer 'twitter-bootstrap-calendar.setup_helpers' do |app|
          app.config.to_prepare do
            ActionController::Base.send :helper, BootstrapCalendarHelper
          end
        end
      end
    end
  end
end
