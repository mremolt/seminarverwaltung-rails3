class BenutzerController < InheritedResources::Base

  has_scope :search_for

  private
  def collection
    @benutzer ||= end_of_association_chain.paginate(
      :page => params[:page], :per_page => 15)
  end
end
