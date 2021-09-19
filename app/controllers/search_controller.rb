class SearchController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
  end

  def search
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

    # puts @results.inspect
    respond_to do |format|
      if !@results
        format.html { render :index, status: :unprocessable_entity}
      else
        format.turbo_stream do
          render turbo_stream: turbo_stream.replace(
            'results',
            partial: 'search/results'
          )
        end
      end
    end
  end

  def show
  end
end
