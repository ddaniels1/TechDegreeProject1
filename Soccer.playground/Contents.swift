// Dictionary of Players, height, experience and guardians


let player1: [String:String] = ["name": "Joe Smith", "height": "42", "experience": "yes", "guardians": "Jim and Jan Smith"]
let player2: [String:String] = ["name": "Jill Tanner", "height": "36", "experience": "yes", "guardians": "Clara Tanner"]


var players: [[String:String]] = [player1, player2]

players [1]["height"]
    
var experiencedPlayers: [[String:String]] = []


for levelOfExperience in players{
    if levelOfExperience["experience"] == "yes" {
         levelOfExperience["name"]
        experiencedPlayers.append(levelOfExperience)
print(experiencedPlayers)
 
    }
    }


    




// Teams

var teamSharks: [String] = []
var teamDragons: [String] = []
var teamRaptors: [String] = []



