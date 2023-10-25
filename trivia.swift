import Foundation

print("Welcome to the Trivia Quiz!")
print("Do you want to play the game? ", terminator: "")
let playing = readLine() ?? ""

if playing.lowercased() == "no" {
    print("Maybe next time!")
    exit(0)
}

if playing.lowercased() != "yes" {
    exit(0)
}

print("Ok! Let's move on to the Trivia.")
var score = 0

let questionsAndAnswers = [
    ("What is the Capital of Ohio?", "columbus"),
    ("Which President had two non-consecutive terms?", "grover cleveland"),
    ("What company did Mark Zuckerberg found in 2004?", "facebook"),
    ("What was YouTube's iconic slogan for many years?", "broadcast yourself"),
    ("In 2010, Kanye West released ____", "my beautiful dark twisted fantasy"),
    ("What year did the first iPhone release?", "2007"),
    ("What does IT stand for?", "information technology"),
    ("What is the Capital of Washington?", "olympia"),
    ("What is Google's parent company?", "alphabet"),
    ("During 2020 and the early COVID era, what hit online multiplayer game took the world by storm?", "among us"),
    ("Who won TIME Magazine's Person of the Year Award in 2006?", "you"),
    ("What does CD stand for?", "compact disc"),
    ("What does SSD stand for?", "solid state drive"),
    ("What year was believed to be the end of the world?", "2012"),
    ("What is the end of a shoelace called?", "aglet"),
    ("What is the Capital of Texas?", "austin"),
    ("When did Gangnam Style release?", "2012"),
    ("What is the Capital of California?", "sacramento"),
    ("In the hit TV series Breaking Bad, what is Walter White's criminal alias?", "heisenberg"),
    ("What does NASA stand for?", "national aeronautics and space administration")
]

for (question, answer) in questionsAndAnswers {
    print(question, terminator: " ")
    let userAnswer = readLine() ?? ""
    
    if userAnswer.lowercased() == answer {
        print("Correct Answer, you may move on.")
        score += 1
    } else {
        print("Incorrect answer or format.")
    }
}

print("You got \(score) questions correct")
print("You got \(Double(score) / 20.0 * 100)%!")