class Ecm::References::Backend::ReferencesController < Itsf::Backend::Resource::BaseController
  include Controller::ActsAsPublishedConcern
  
  def self.resource_class
    # Set the resource class here.
    #
    # Default: Ecm::References::Reference
    #
    Ecm::References::Reference
  end

  private

  def collection_scope
    # Customize the collection scope here for collection retrival (i.e. for the
    # index action).
    #
    # Example: current_user.posts.includes(:comments)
    #
    # Default: resource_class
    #
    resource_class
  end

  def permitted_params
    # Set the allowed params, for your create and update methods.
    # 
    # Example: params
    #            .require(:ecm_references_reference)
    #              .permit(:title, :body)
    # 
    params
      .require(:ecm_references_reference)
        .permit(:ecm_references_category_id, :name, :markup_language, :description, :published)
  end
end
