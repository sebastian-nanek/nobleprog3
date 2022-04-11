class StaticPagesController < ApplicationController
    def privacy
        if params[:lang] == 'pl'
            render 'privacy_pl'
        elsif params[:lang] == 'es'
            render 'privacy_es'
        else
            @privacy_text = Faker::Lorem.paragraphs(number: 6)
        end
    end

    def current_time
    end

    def privacy_policy
        @static_page_content = StaticPage.where(name: 'privacy', lang: params[:lang]).first
    end
end
