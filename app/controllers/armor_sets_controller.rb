class ArmorSetsController < ApplicationController
    def index
        if params[:rank] == 'low'
            render json: ArmorSet.where('rarity < 4')
        elsif params[:rank] == 'high'
            render json: ArmorSet.where('rarity > 3 AND rarity < 8')
        elsif params[:rank] == 'master'
            render json: ArmorSet.where('rarity > 7'), include: ['armors', 'armors.skills', 'armors.materials']
        else
            render json: {errors: ["Rank does not exist."]}, status: :not_found
        end
    end
end
