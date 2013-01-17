require 'rails'
require 'respond_to_parent/version'
require 'respond_to_parent/action_controller_methods'

module RespondToParent
  class Railtie < Rails::Railtie
    initializer 'respond_to_parent.initializer' do
      ActiveSupport.on_load(:action_controller) do
        include RespondToParent::ActionControllerMethods
      end
    end
  end
end
