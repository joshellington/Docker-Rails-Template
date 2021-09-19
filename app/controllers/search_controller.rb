class SearchController < ApplicationController
  def index
    client = MeiliSearch::Client.new(ENV['MEILI_URL'])
    index = client.index('orgs')
    default_search_options = {
      limit: 32
    }
    search_options = if ["osu", "ut"].include? params[:school]
      {filter: ["school = #{params[:school].downcase}"]}
    else
      {}
    end
    
    @results = if params[:q].present?
      index.search(params[:q], default_search_options.merge(search_options))
    else
      nil
    end
    
    respond_to do |format|
      format.html
      format.turbo_stream do
        render turbo_stream: turbo_stream.replace(
          'results',
          partial: 'search/results'
        )
      end
    end
  end

  def show
  end
end
