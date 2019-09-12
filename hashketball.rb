require "pry"

def game_hash
    {
        home: {
            team_name: "Brooklyn Nets",
            colors: ["Black", "White"],
            players:[
                {
                    player_name: "Alan Anderson",
                    number: 0,
                    shoe: 16,
                    num: 22,
                    rebounds: 12,
                    assits: 12,
                    steals: 3,
                    blocks: 1,
                    slam_dunks: 1
                },
                {
                    player_name: "Reggie Evans",
                    number: 30,
                    shoe: 14,
                    num: 12,
                    rebounds: 12,
                    assits: 12,
                    steals: 12,
                    blocks: 12,
                    slam_dunks: 7
                },
                {
                    player_name: "Brook Lopez",
                    number: 11,
                    shoe: 17,
                    num: 17,
                    rebounds: 19,
                    assits: 10,
                    steals: 3,
                    blocks: 1,
                    slam_dunks: 15
                },
                {
                    player_name: "Mason Plumlee",
                    number: 1,
                    shoe: 19,
                    num: 26,
                    rebounds: 11,
                    assits: 6,
                    steals: 3,
                    blocks: 8,
                    slam_dunks: 5
                },
                {
                    player_name: "Jason Terry",
                    number: 31,
                    shoe: 15,
                    num: 19,
                    rebounds: 2,
                    assits: 2,
                    steals: 4,
                    blocks: 11,
                    slam_dunks: 1
                }
            ]
        },

        away: {
            team_name: "Charlotte Hornets",
            colors: ["Turquoise", "Purple"],
            players:[
                {
                    player_name: "Jeff Adrien",
                    number: 4,
                    shoe: 18,
                    num: 10,
                    rebounds: 1,
                    assits: 1,
                    steals: 2,
                    blocks: 7,
                    slam_dunks: 2
                },
                {
                    player_name: "Bismack Biyombo",
                    number: 0,
                    shoe: 16,
                    num: 12,
                    rebounds: 4,
                    assits: 7,
                    steals: 22,
                    blocks: 15,
                    slam_dunks: 10
                },
                {
                    player_name: "DeSagna Diop",
                    number: 2,
                    shoe: 14,
                    num: 24,
                    rebounds: 12,
                    assits: 12,
                    steals: 4,
                    blocks: 5,
                    slam_dunks: 5
                },
                {
                    player_name: "Ben Gordon",
                    number: 8,
                    shoe: 15,
                    num: 33,
                    rebounds: 3,
                    assits: 2,
                    steals: 1,
                    blocks: 1,
                    slam_dunks: 0
                },
                {
                    player_name: "Kemba Walker",
                    number: 33,
                    shoe: 15,
                    num: 6,
                    rebounds: 12,
                    assits: 12,
                    steals: 7,
                    blocks: 5,
                    slam_dunks: 12
                }
            ]
        }
    }
end

def num_points_scored(player_given)
    game_hash.each do |place_k, place_v|
        binding.pry
        place_v.each do |team_info_k, team_info_v|
            binding.pry
            next unless team_info_k == :players

            team_info_v.each do |player|
                binding.pry
                return player[:num] if player[:player_name] == player_given
            end
        end
    end
end

num_points_scored("Reggie Evans")
# def shoe_size(player_given)
#     game_hash.each do |place_k, place_v|
#         place_v.each do  |team_info_k, team_info_v|
#             next unless team_info_k == :players

#             team_info_v.each do |player|
#                 return player[:shoe] if player[:player_name] == player_given
#             end
#         end
#     end
# end

# def team_colors(team)
#     game_hash.each do |place_k, place_v|
#         return place_v[:colors] if place_v[:team_name] == team
#     end
# end

# def team_names
#     game_hash.map do |place_k, place_v|
#         place_v[:team_name]
#     end
# end
