class Ecm::References::Backend::CategoriesController < Itsf::Backend::Resource::BaseController
  def self.resource_class
    # Set the resource class here.
    #
    # Default: Ecm::References::Category
    #
    Ecm::References::Category
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
    #            .require(:ecm_references_category)
    #              .permit(:title, :body)
    #
    params
      .require(:ecm_references_category)
      .permit(:locale, :parent_id, :name, :description)
  end
end
