// Dictionary of Players, height, experience and guardians

let player1: [String: String] = ["name": "Joe Smith", "height" : "42.0", "experience": "true", "guardians": "Jim and Jan Smith"]

let player2: [String: String] = ["name": "Jill Tanner", "height" : "36.0", "experience": "true", "guardians": "Clara Tanner"]

let player3: [String: String] = ["name": "Bill Bon", "height" : "43.0", "experience": "true", "guardians": "Sara and Jenny Bon"]

let player4: [String: String] = ["name": "Eva Gordon", "height" : "45.0", "experience": "false", "guardians": "Wendy and Mike Gordon"]

let player5: [String: String] = ["name": "Matt Gill", "height" : "40.0", "experience": "false", "guardians": "Charles and Sylvia Gill"]

let player6: [String: String] = ["name": "Kimmy Stein", "height" : "41.0", "experience": "false", "guardians": "Bill and Hillary Stein"]

let player7: [String: String] = ["name": "Sammy Adams", "height" : "45.0", "experience": "false", "guardians": "Jeff Adams"]

let player8: [String: String] = ["name": "Karl Saygan", "height" : "42.0", "experience": "true", "guardians": "Heather Bledsoe"]

let player9: [String: String] = ["name": "Suzane Greenberg", "height" : "44.0", "experience": "true", "guardians": "Henrietta Dumas"]

let player10: [String: String] = ["name": "Sal Dali", "height" : "41.0", "experience": "false", "guardians": "Gala Dali"]

let player11: [String: String] = ["name": "Joe Kavalier", "height" : "39.0", "experience": "false", "guardians": "Sam and Elaine Kavalier"]

let player12: [String: String] = ["name": "Ben Finkelstein", "height" : "44.0", "experience": "false", "guardians": "Aaron and Jill Finkelstein"]

let player13: [String: String] = ["name": "Diego Soto", "height" : "41.0", "experience": "true", "guardians": "Robin and Sarika Soto"]

let player14: [String: String] = ["name": "Chloe Alaska", "height" : "47.0", "experience": "false", "guardians": "David and Jamie Alaska"]

let player15: [String: String] = ["name": "Arnold Willis", "height" : "43.0", "experience": "false", "guardians": "Claire Willis"]

let player16: [String: String] = ["name": "Phillip Helm", "height" : "44.0", "experience": "true", "guardians": "Thomas Helm and Eva Jones"]

let player17: [String: String] = ["name": "Les Clay", "height" : "42.0", "experience": "true", "guardians": "Wynonna Brown"]

let player18: [String: String] = ["name": "Herschel Krustofski", "height" : "45.0", "experience": "true", "guardians": "Hyman and Rachel Krustofski"]


var players: [[String: String]] = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]

    


func sortByExperience (players: [[String:String]]) -> (experienced: [[String:String]], inexperienced: [[String:String]]){
    var experienced: [[String:String]] = []
    var inexperienced: [[String:String]] = []
    
    for player in players{
        if player["experience"] == "true"{
            experienced.append(player)
        } else{
            if player["experience"] == "false" {
                inexperienced.append(player)
            }
        }
    }
    
    return (experienced, inexperienced)
}


var playersByExperience = (sortByExperience(players: players))

//print(playersByExperience.experienced)
//print(playersByExperience.inexperienced)
var teamSharks: [[String:String]] = []
var teamDragons: [[String:String]] = []
var teamRaptors: [[String:String]] = []

func sortTeams(byExperience: [[String:String]]) -> (teamSharks:[[String:String]], teamDragons: [[String:String]], teamRaptors: [[String:String]]){
    var teamSharks: [[String:String]] = []
    var teamDragons: [[String:String]] = []
    var teamRaptors: [[String:String]] = []
    
    for player in playersByExperience.experienced {
        teamSharks.append(player)
        teamDragons.append(player)
        teamRaptors.append(player)
        
    }

 
    return (teamSharks, teamDragons, teamRaptors)
}




for player in playersByExperience.experienced {
    if player {
           teamSharks.append(player)
    }
        
    
}

print(sortTeams(byExperience: playersByExperience.experienced))
