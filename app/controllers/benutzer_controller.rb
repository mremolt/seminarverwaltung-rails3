class BenutzerController < InheritedResources::Base

  private
  def collection
    @benutzer ||= end_of_association_chain.paginate(
      :page => params[:page], :per_page => 15)
  end
end
