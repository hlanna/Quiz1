//
//  QuestionBank.swift
//  Quiz1
//
//  Created by Anna Hacksell Lindberg on 2019-02-02.
//  Copyright © 2019 Anna Hacksell Lindberg. All rights reserved.
//

import Foundation

class QuestionBank{
    var enList = [Question]()
    var svList = [Question]()
    
    init() {
        enList.append(Question(questionText: "How old is the Milky Way?", choice1: "No one knows", choicex: "13.6 billion years", choice2: "45 billion years", answer: 2))
        enList.append(Question(questionText: "When was Uranus recognised as a planet?", choice1: "1823", choicex: "1675", choice2: "1783", answer: 3))
        enList.append(Question(questionText: "Which planet is NOT named after a Greek or Roman deity?", choice1: "Earth", choicex: "Uranus", choice2: "Mars", answer: 1))
        enList.append(Question(questionText: "Who was the first person on the Moon?", choice1: "Neil Armstrong", choicex: "Christer Fuglesang", choice2: "Valentina Tereshkova", answer: 1))
        enList.append(Question(questionText: "How many rings does Saturn have?", choice1: "70", choicex: "30+", choice2: "150+", answer: 2))
        enList.append(Question(questionText: "How many different types of galaxies exist?", choice1: "500", choicex: "3", choice2: "25", answer: 2))
        enList.append(Question(questionText: "Which planet is the dwarf planet Ceres closest to?", choice1: "Saturn", choicex: "Neptune", choice2: "The sun", answer: 3))
        enList.append(Question(questionText: "How many Earth days is a year on Mercury?", choice1: "718 days", choicex: "88 days", choice2: "256 days", answer: 2))
        enList.append(Question(questionText: "How many meteor showers happen per year?", choice1: "The limit does not exist", choicex: "14", choice2: "21", answer: 3))
        enList.append(Question(questionText: "How many gas giants exists in our solar system?", choice1: "7", choicex: "93", choice2: "4", answer: 3))
        enList.append(Question(questionText: "On which planet is a day longer than a year?", choice1: "Mars", choicex: "Neptune", choice2: "Venus", answer: 3))
        enList.append(Question(questionText: "What was the first animal in space?", choice1: "Fruit flies", choicex: "Dog", choice2: "Monkey", answer: 1))
        svList.append(Question(questionText: "Hur gammal är Vintergatan?", choice1: "Ingen vet", choicex: "13.6 biljoner år", choice2: "45 biljoner år", answer: 2))
        svList.append(Question(questionText: "När blev Uranus erkänd som planet?", choice1: "1823", choicex: "1675", choice2: "1783", answer: 3))
        svList.append(Question(questionText: "Vilken planet är INTE nämn efter en grekisk eller romersk gud?", choice1: "Tellus", choicex: "Uranus", choice2: "Mars", answer: 1))
        svList.append(Question(questionText: "Vem var den första personen på månen?", choice1: "Neil Armstrong", choicex: "Christer Fuglesang", choice2: "Valentina Tereshkova", answer: 1))
        svList.append(Question(questionText: "Hur många ringar har Saturnus?", choice1: "70", choicex: "30+", choice2: "150+", answer: 2))
        svList.append(Question(questionText: "Hur många olika sorters galaxer finns det?", choice1: "500", choicex: "3", choice2: "25", answer: 2))
        svList.append(Question(questionText: "Vilken planet är dvärgplaneten Ceres närmast?", choice1: "Saturnus", choicex: "Neptunus", choice2: "Solen", answer: 3))
        svList.append(Question(questionText: "Hur många jord-dagar är ett år på Merkurius?", choice1: "718 dagar", choicex: "88 dagar", choice2: "256 dagar", answer: 2))
        svList.append(Question(questionText: "Hur många meteorregn händer per år?", choice1: "Det finns ingen gräns", choicex: "14", choice2: "21", answer: 3))
        svList.append(Question(questionText: "Hur många gasjättar finns i vårat solsystem?", choice1: "7", choicex: "93", choice2: "4", answer: 3))
        svList.append(Question(questionText: "På vilken planet är en dag längre än ett år?", choice1: "Mars", choicex: "Neptunus", choice2: "Venus", answer: 3))
        svList.append(Question(questionText: "Vad var det första djuret i rymden?", choice1: "Fruktflugor", choicex: "Hund", choice2: "Apa", answer: 1))
        
        enList.shuffle()
        svList.shuffle()
    }
    
    
    
   
}
