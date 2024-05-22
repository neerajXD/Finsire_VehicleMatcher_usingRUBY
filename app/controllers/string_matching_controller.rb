require 'amatch'

class StringMatchingController < ApplicationController
  DATABASE_NAMES = [
    "ford_aspire", "ford_ecosport", "ford_endeavour", "ford_figo",
    "honda_amaze", "honda_city", "honda_wr_v",
    "hyundai_aura", "hyundai_grand_i10", "hyundai_i10",
    "jeep_compass", "jeep_meridian",
    "kia_carens", "kia_seltos", "kia_sonet",
    "land_rover_defender",
    "mahindra_scorpio", "mahindra_thar", "mahindra_xuv300", "mahindra_xuv400", "mahindra_xuv700",
    "maruti_celerio", "maruti_suzuki_brezza", "maruti_suzuki_s_presso", "maruti_suzuki_swift", "maruti_suzuki_wagonr", "maruti_suzuki_xl6",
    "mg_astor", "mg_gloster", "mg_hector", "mg_zs_ev",
    "renault_kiger", "renault_triber",
    "skoda_kushaq", "skoda_slavia",
    "tata_harrier", "tata_punch", "tata_tiago",
    "toyota_camry", "toyota_fortuner", "toyota_fortuner_legender", "toyota_glanza", "toyota_innova_crysta"
  ]

  def match
    user_input = params[:input].downcase

    best_match = ""
    best_score = 0

    DATABASE_NAMES.each do |db_name|
      score = db_name.pair_distance_similar(user_input)
      if score > best_score
        best_score = score
        best_match = db_name
      end
    end

    render json: { best_match: best_match, score: best_score }
  end
end
