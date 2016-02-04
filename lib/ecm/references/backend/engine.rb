module Ecm
  module References
    module Backend
      class Engine < ::Rails::Engine
        isolate_namespace Ecm::References::Backend

        initializer "ecm_references_backend.asset_pipeline" do |app|
          app.config.assets.precompile << 'ecm_references_backend.js'
          app.config.assets.precompile << 'ecm_references_backend.css'
        end
      end
    end
  end
end
