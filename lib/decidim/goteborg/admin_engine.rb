# frozen_string_literal: true

module Decidim
  module Goteborg
    # This is the engine that runs on the public interface of `Goteborg`.
    class AdminEngine < ::Rails::Engine
      isolate_namespace Decidim::Goteborg::Admin

      paths["db/migrate"] = nil
      paths["lib/tasks"] = nil

      routes do
        # Add admin engine routes here
        # resources :goteborg do
        #   collection do
        #     resources :exports, only: [:create]
        #   end
        # end
        # root to: "goteborg#index"
      end

      def load_seed
        nil
      end
    end
  end
end
