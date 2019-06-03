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

    
// Function to sort players

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


// collection of experienced and inexperienced players

var playersByExperience = (sortByExperience(players: players))

// Make arrays of experienced and inexperienced players

let experiencedPlayers = playersByExperience.experienced
let inexperiencedPlayers = playersByExperience.inexperienced


// Function to sort players in to teams
func sortTeams(experiencedPlayers: [[String:String]], inexperiencedPlayers: [[String:String]]) -> (teamSharks: [[String : String]], teamDragons: [[String : String]], teamRaptors: [[String : String]])
{

var teamDragons: [[String: String]] = []
var teamSharks: [[String: String]] = []
var teamRaptors: [[String: String]] = []

for index in 0..<experiencedPlayers.count {
        if index % 3 == 0 {
        teamDragons.append(experiencedPlayers[index])
    } else {
        if index % 3 == 1{
        teamSharks.append(experiencedPlayers[index])
    } else {
        if index % 3 == 2{
        teamRaptors.append(experiencedPlayers[index])
        }
}
}
}
    
    for index in 0..<inexperiencedPlayers.count{
        if index % 3 == 0 {
        teamDragons.append(inexperiencedPlayers[index])
        } else {
        if index % 3 == 1{
        teamSharks.append(inexperiencedPlayers[index])
        }else{
        if index % 3 == 2{
        teamRaptors.append(experiencedPlayers[index])
            }}
            
        }
        
    }
        
    

 
return (teamSharks, teamDragons, teamRaptors)
}


var team = sortTeams(experiencedPlayers: experiencedPlayers, inexperiencedPlayers: inexperiencedPlayers)

let teamSharks = team.teamSharks
let teamDragons = team.teamDragons
let teamRaptors = team.teamRaptors


let sharksPracticeTime = "March 17th at 3pm"
let dragonsPracticeTime = "March 17th at 1pm"
let raptorsPracticeTime = "March 18th at 1pm"


func writeLetters(forSharks sharksLetters: [[String:String]], forDragons dragonsLetters: [[String:String]], forTeamRaptors raptorsLetters: [[String:String]]) -> (sharksTeamLetters: [String], dragonsTeamLetters: [String], raptorsTeamLetters: [String])
{
    let sharksTeamLetters: [String] = []
    let dragonsTeamLetters: [String] = []
    let raptorsTeamLetters: [String] = []
    
    for letter in sharksLetters {
       
    }
    
    
    
    
return (sharksTeamLetters, dragonsTeamLetters, raptorsTeamLetters)
}

writeLetters(forSharks: teamSharks, forDragons: teamDragons, forTeamRaptors: teamRaptors)
