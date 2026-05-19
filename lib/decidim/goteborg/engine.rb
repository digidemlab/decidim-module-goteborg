# frozen_string_literal: true

require "rails"
require "decidim/core"

module Decidim
  module Goteborg
    # This is the engine that runs on the public interface of goteborg.
    class Engine < ::Rails::Engine
      isolate_namespace Decidim::Goteborg

      routes do
        # Add engine routes here
        # resources :goteborg
        # root to: "goteborg#index"
      end

      initializer "Goteborg.webpacker.assets_path" do
        Decidim.register_assets_path File.expand_path("app/packs", root)
      end

      config.to_prepare do
        Decidim::RegistrationForm.include(RegistrationFormOverride)
      end
    end
  end
end
