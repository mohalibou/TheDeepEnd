//
//  Question.swift
//  TheDeepEnd
//
//  Created by Mohamed Ali Boutaleb on 4/25/22.
//

import SwiftUI

struct Question: Identifiable {
    let id = UUID()
    var name: String
    var colorName: Color
    var imageName: String
    var description: String
    var descriptionLong: String
    var question1: String
    var question2: String
    var question3: String
    var question4: String
    var question5: String
    var question6: String
    var question7: String
    var question8: String
    var question9: String
    var question10: String
    
    static var preview = Question(name: "Title Example",
                                  colorName: Color.oneFootDeep,
                                  imageName: "onboarding1",
                                  description: "This is a description of stuff to describe what the section is all about. Pretty descriptive.",
                                  descriptionLong: "Hello everyone, my name is Markiplier and welcome back to Five Nights at Freddy's. Hello everyone, my name is Markiplier and welcome back to Five Nights at Freddy's.",
                                  question1: "What is your favorite movie, and why is it Shrek 3?",
                                  question2: "What is your favorite programming language?",
                                  question3: "How big is your house?",
                                  question4: "How much money do you make?",
                                  question5: "Are you cringe?",
                                  question6: "Am I cringe?",
                                  question7: "You think this could be bad for the economy? Also, my name is Jeff. That's a reference to 21 Jump Street. Never saw the movie, but the meme's funny.",
                                  question8: "Are you based or cringe?",
                                  question9: "Are you an alpha or a beta?",
                                  question10: "Are you on that sigma male grindset?")
}

struct Data {
    static let questions = [
        Question(name: "1 Foot Deep",
                 colorName: Color.oneFootDeep,
                 imageName: "ball",
                 description: "Tip your toes in to test the waters and get to know one another.",
                 descriptionLong: "Sometimes it’s hard to break the ice when you meet someone for the first time or are trying to rekindle that connection you once had. Start to get to know the ones around you with this list of questions designed to scratch the surface of communication.",
                 question1: "Is there anything in the coming weeks that you are excited for?",
                 question2: "If you were to experience a perfect day, what would that day look like?",
                 question3: "What would you do if you won the lottery?",
                 question4: "If you were given the ability to speak all languages or play any instrument, which would you pick?",
                 question5: "What is your best skill/talent?",
                 question6: "How do you like to spend your free time?",
                 question7: "What was the last picture you took on your phone?",
                 question8: "What is your favorite comfort food?",
                 question9: "Do you have any hobbies?",
                 question10: "What skill have you been itching to learn?"),
        Question(name: "2 Feet Deep",
                 colorName: Color.twoFeetDeep,
                 imageName: "lifeguard",
                 description: "Starting to get used to the temperature of the pool? Ask some more interesting questions.",
                 descriptionLong: "It’s exciting when the conversation starts to flow and potentially become something even more meaningful. Here is a list of questions designed to keep that flow going and to open the opportunity for deeper conversation.",
                 question1: "What is the saddest movie, tv show, or book that you know?",
                 question2: "How do you relax after a long, hard day?",
                 question3: "What is the best piece of advice you've received?",
                 question4: "Would you rather receive money or a gift?",
                 question5: "If you were given the option to retire anywhere in the world, where would you go?",
                 question6: "If you wanted a piece of technology from a fictional world to really exist, what would that tech be?",
                 question7: "If you were to live in your dream home, what would that home look like?",
                 question8: "If you were stranded on an island, what three items would you bring with you?",
                 question9: "What is one thing that is not taught in schools that should?",
                 question10: "Are you a leader or a follower?"),
        Question(name: "3 Feet Deep",
                 colorName: Color.threeFeetDeep,
                 imageName: "goggles",
                 description: "Submerge your legs in to get moving across the pool and ask more invoking questions.",
                 descriptionLong: "Leave an impression with the ones you talk to by asking questions that spark deeper thought. Ask questions that will cause the ones around you to really think about their answers and understand them on a deeper level. ",
                 question1: "What is something that you have done in the past that still makes you cringe?",
                 question2: "When have you been the happiest in life?",
                 question3: "Can you recall the last dream you had and what it was about?",
                 question4: "If you could stop doing one thing you did everyday, what would that thing be?",
                 question5: "If you were able to spend an hour with anyone (living or dead) who would that person be?",
                 question6: "In what era of time would you have liked to experience growing up in?",
                 question7: "What fictional world would you like to see become a reality?",
                 question8: "What is the most important thing someone can do to help the ones around them?",
                 question9: "Is there something that people do in order to look cool that you feel has the opposite effect?",
                 question10: "Do dreams have meaning?"),
        Question(name: "4 Feet Deep",
                 colorName: Color.fourFeetDeep,
                 imageName: "umbrella",
                 description: "Start moving your arms to swim across and get to the deeper thoughts of others.",
                 descriptionLong: "Start to ask questions that will allow you to understand what others value the most in life. Everyone holds different beliefs and goals that are crucial to understand when you are seeking to deepen your relationship with them.",
                 question1: "Is there a place in this world that you feel the most represented in?",
                 question2: "What event has had the greatest impact on you as a person?",
                 question3: "If you knew you could succeed in just one thing, what would that thing be?",
                 question4: "What would an ideal life in this world look like to you?",
                 question5: "What is your greatest accomplishment in life?",
                 question6: "Do you believe that everyone has a talent?",
                 question7: "Who is the most influential teacher in your life?",
                 question8: "How do you feel about getting older?",
                 question9: "What age would you want to live up to?",
                 question10: "Would you prefer to have a large group of friends or a couple of friends you are really close with?"),
        Question(name: "5 Feet Deep",
                 colorName: Color.fiveFeetDeep,
                 imageName: "sunglasses",
                 description: "Get your goggles ready to start submerging into personal and meaningful discussion territory.",
                 descriptionLong: "Get into more meaningful territory and ask questions that will highlight the truly important thoughts of others. This is great for developing an understanding of who they are and what ideas they hold dearest to their hearts.",
                 question1: "In what moments do you feel like the most authentic version of yourself?",
                 question2: "Do you think the future ahead of us as a society is something to look forward to?",
                 question3: "Do you think the growing field of tech has positively or negatively affected society?",
                 question4: "What is your favorite thing about yourself?",
                 question5: "If you were given a letter that had the exact day and time of your death, would you open it?",
                 question6: "What kind of parent do you wish your kids would remember you as?",
                 question7: "Do you believe in luck or do you believe people make their own luck?",
                 question8: "What is your biggest fear?",
                 question9: "What is a personal memory from your childhood that you hold near and dear to your heart?",
                 question10: "Do you believe spirituality is important?"),
        Question(name: "6 Feet Deep",
                 colorName: Color.sixFeetDeep,
                 imageName: "bikini",
                 description: "Submerge yourself into the deep end of the pool to understand the more important values of others.",
                 descriptionLong: "Ask questions that are designed to dive the deepest into the values of others. Understand them on the most personal level and get to know how they perceive the world around them.",
                 question1: "What is an unfortunate fact that we’ve all come to accept as the truth of this life?",
                 question2: "Would you rather live a comfortable and safe but boring life for 80 years, or would you rather live an exciting and fulfilling life for 40 years?",
                 question3: "What is the purpose of life?",
                 question4: "How have your priorities changed overtime?",
                 question5: "Who would you sacrifice your life for?",
                 question6: "Where do you think we come from?",
                 question7: "What is something you are sensitive about that you wish no one would joke about?",
                 question8: "What is something that is weighing down on you right now?",
                 question9: "How would you like to be treated when you are in a state of despair or sadness?",
                 question10: "How likely are you to forgive someone who has wronged you?"),
    ]
}

