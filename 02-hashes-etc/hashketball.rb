# Write your code here!
require 'pry'

def game_hash
  {
    away: { team_name: 'Charlotte Hornets',
            colors: %w[Turquoise Purple],
            players: [
              { player_name: 'Jeff Adrien',
                number: 4,
                shoe: 18,
                points: 10,
                rebounds: 1,
                assists: 1,
                steals: 2,
                blocks: 7,
                slam_dunks: 2 },
              { player_name: 'Bismack Biyombo',
                number: 0,
                shoe: 16,
                points: 12,
                rebounds: 4,
                assists: 7,
                steals: 22,
                blocks: 15,
                slam_dunks: 10 },
              { player_name: 'DeSagna Diop',
                number: 2,
                shoe: 14,
                points: 24,
                rebounds: 12,
                assists: 12,
                steals: 4,
                blocks: 5,
                slam_dunks: 5 },
              { player_name: 'Ben Gordon',
                number: 8,
                shoe: 15,
                points: 33,
                rebounds: 3,
                assists: 2,
                steals: 1,
                blocks: 1,
                slam_dunks: 0 },
              { player_name: 'Kemba Walker',
                number: 33,
                shoe: 15,
                points: 6,
                rebounds: 12,
                assists: 12,
                steals: 7,
                blocks: 5,
                slam_dunks: 12 }
            ] },
    home: { team_name: 'Brooklyn Nets',
            colors: %w[Black White],
            players: [
              { player_name: 'Alan Anderson',
                number: 0,
                shoe: 16,
                points: 22,
                rebounds: 12,
                assists: 12,
                steals: 3,
                blocks: 1,
                slam_dunks: 1 },
              { player_name: 'Reggie Evans',
                number: 30,
                shoe: 14,
                points: 12,
                rebounds: 12,
                assists: 12,
                steals: 12,
                blocks: 12,
                slam_dunks: 7 },
              { player_name: 'Brook Lopez',
                number: 11,
                shoe: 17,
                points: 17,
                rebounds: 19,
                assists: 10,
                steals: 3,
                blocks: 1,
                slam_dunks: 15 },
              { player_name: 'Mason Plumlee',
                number: 1,
                shoe: 19,
                points: 26,
                rebounds: 11,
                assists: 6,
                steals: 3,
                blocks: 8,
                slam_dunks: 5 },
              { player_name: 'Jason Terry',
                number: 31,
                shoe: 15,
                points: 19,
                rebounds: 2,
                assists: 2,
                steals: 4,
                blocks: 11,
                slam_dunks: 1 }
            ] }
  }
end

def players
    players_by_team = game_hash.map do |team_location, team_hash|
        team_hash[:players]
    end
    players_by_team.flatten
end

def get_player_hash(player_name)
    players.find do |player|
        player[:player_name] == player_name
    end
end

def num_points_scored(player_name)
    player_hash = get_player_hash(player_name)
    player_hash[:points]
end


def shoe_size(player_name)
    player_hash = get_player_hash(player_name)
    player_hash[:shoe]
end

def team_names
    game_hash.map do |location, team_hash|
        team_hash[:team_name]
    end
end

def get_team_hash(team_name)
    found_hash = game_hash.find do |location, team_hash|
        team_hash[:team_name] == team_name
    end
    found_hash[1]
end

def player_numbers(team_name)
    team_hash = get_team_hash(team_name)
    team_hash[:players].map do |player|
        player[:number]
    end
end

def player_with_biggest_shoe_size
    players.max_by do |player|
        player[:shoe]
    end
end

def big_shoe_rebounds
    player_with_biggest_shoe_size[:rebounds]
end

def players_with_shoes_bigger_than(size = 15)
    players.select do |player|
        player[:shoe] > size
    end
end

binding.pry
