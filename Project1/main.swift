


// Treehouse iOS Techdegree
// Unit 1 - Project 1: Soccer League Coordinator in Swift
// By: Priyanka Chaturvedi

var players:[[String: String]] = [["Name": "Joe Smith", "Hieght": "52", "Experience": "true", "Guardian": "Jim and Jan Smith"],
                                  ["Name": "Jill Tanner", "Hieght": "36", "Experience": "true", "Guardian": "Clara Tanner"],
                                  ["Name": "Bill Bon", "Hieght": "23", "Experience": "true", "Guardian": "Sara and Jenny Bon"],
                                  ["Name": "Eva Gordon", "Hieght": "45", "Experience": "false", "Guardian": "Wendy and Mike Gordon"],
                                  ["Name": "Matt Gill", "Hieght": "40", "Experience": "false", "Guardian": "Charles and Sylvia Gill"],
                                  ["Name": "Kimmy Stein", "Hieght": "41", "Experience": "false", "Guardian": "Bill and Hillary Stein"],
                                  ["Name": "Sammy Adams", "Hieght": "45", "Experience": "false", "Guardian": "Jeff Adams"],
                                  ["Name": "Karl Saygan", "Hieght": "42", "Experience": "true", "Guardian": "Heather Bledsoe"],
                                  ["Name": "Suzane Greenberg", "Hieght": "44", "Experience": "true", "Guardian": "Henrietta Dumas"],
                                  ["Name": "Sal Dali", "Hieght": "41", "Experience": "false", "Guardian": "Gala Dali"],
                                  ["Name": "Joe Kavalier", "Hieght": "39'", "Experience": "false", "Guardian": "Sam and Elaine Kavaller"],
                                  ["Name": "Ben Finkelstein", "Hieght": "44", "Experience": "false", "Guardian": "Aaron and Jill Finkeistein"],
                                  ["Name": "Diego Soto", "Hieght": "46", "Experience": "true", "Guardian": "Robin and Sarika Soto"],
                                  ["Name": "Chloe Alaska", "Hieght": "47", "Experience": "false", "Guardian": "David and Jamie Alaska"],
                                  ["Name": "Arnold Willis", "Hieght": "43", "Experience": "false", "Guardian": "Claire Willis"],
                                  ["Name": "Phillip Helm", "Hieght": "44", "Experience": "true", "Guardian": "Thomas and Eva Jones"   ],
                                  ["Name": "Les Clay", "Hieght": "42", "Experience": "true", "Guardian": "Wynonna Brown"],
                                  ["Name": "Herschel Krustofski", "Hieght": "45", "Experience": "true", "Guardian": "Hyman and Rachel Krustofski"]]

//Array of empty dictionary for holding data for experienced and non experienced players
var experiencedPlayer:[[String: String]] = []

var inexperiencedPlayer:[[String: String]] = []

// Dictionary to hold the team players
var teamDragons: [[String: String]] = []
var teamSharks: [[String: String]] = []
var teamRaptors: [[String: String]] = []

//conditional loop for grouping players as experienced and inexperienced
for player in players {
    if player ["Experience"] == "true" {
        experiencedPlayer.append(player)
    }
    else {
        inexperiencedPlayer.append(player)
    }
}
//distributing the experienced players in each team
let limitExp = experiencedPlayer.count / 3

   for expPlayer in experiencedPlayer {
    
    if teamDragons.count < limitExp {
        teamDragons.append(expPlayer)
    }
    else if teamSharks.count < limitExp {
        teamSharks.append(expPlayer)
    }
    else {
        teamRaptors.append(expPlayer)
    }
}

//distributing the inexperienced players in each team
let limitInExp =  (inexperiencedPlayer.count / 3) + limitExp

for inexpPlayer in inexperiencedPlayer {
    
    if teamDragons.count < limitInExp {
        teamDragons.append(inexpPlayer)
    }
    else if teamSharks.count < limitInExp {
        teamSharks.append(inexpPlayer)
    }
        
    else {
        teamRaptors.append(inexpPlayer)
    }
}


//Aaary to hold all players letters for the parents
 var letters:[String] = []

    for dragonPlayers in teamDragons {
    
    let Name = dragonPlayers["Name"] ?? "Child"
    let Gaurdian = dragonPlayers["Guardian"] ?? "Gaurdian"
    
    let letterA = " Dear, \(Gaurdian), \(Name)" +  "has been selected for the team Dragons. And should attend the first team team practice on  March 17, 1pm"
    print(letterA)
    letters.append(letterA)
}

for raptorPlayers in teamRaptors {
    
    let Name = raptorPlayers["Name"] ?? "Child"
    let Gaurdian = raptorPlayers["Guardian"] ?? "Gaurdian"
    
    let letterB = " Dear, \(Gaurdian), \(Name)" +  "has been selected for the team Raptor. And should attend the first team team practice on  March 18, 1pm"
    print(letterB)
    letters.append(letterB)
}
for sharkPlayers in teamSharks {
    let Name = sharkPlayers["Name"] ?? "Child"
    let Gaurdian = sharkPlayers["Guardian"] ?? "Gaurdian"
    let letterC = " Dear, \(Gaurdian), \(Name)" +  "has been selected for the team Shark. And should attend the first team team practice on  March 17, 3pm"
    print(letterC)
    letters.append(letterC)
}

//monika cjghgghgghghhjghghghgh

//priyanka bnhjhjhjhjhj
