//
//  Localization.swift

import Foundation
enum Localization {
    enum TabBarItem {
        static let home = "home".localized
        static let guideme = "guideme".localized
        static let notification = "notification".localized
        static let community = "community".localized
        static let menu = "menu".localized
    }
    
    enum StartView {
        static let title = "The Mutawwaf the best companion of the Ancient House".localized
        static let subTitle = "From preparing for Ihram to the conclusion of the rituals, we guide you, remind you, and help you perform your rituals with calm and certainty.".localized
        static let startButtonTitle = "Start your journey with us".localized
        static let loginAsAGuest = "Login as a guest".localized
        static let haveAnAccount = "I have an account".localized
    }
    
    enum Login {
        static let welcomeLetStartOurJourneyTogether = "Welcome! Let's start our journey together".localized
        static let logInToSaveAndRestoreYourData = "Log in to save and restore your data".localized
        static let logInWithFacebook = "Log in with Facebook".localized
        static let signInWithGoogle = "Sign in with Google".localized
        static let signInWithApple = "Sign in with Apple".localized
        static let byLoggingIntoAlMutawwafYouAgreeTo = "By logging into Al-Mutawwaf you agree to".localized
        static let termsOfUse = "Terms of Use".localized
        static let and = "and".localized
        static let privacy = "Privacy".localized
    }
    
    enum DiscoverView {
        enum TopSlider {
            static let exploreNow = "Explore now".localized
        }
        
        enum HeaderView {
            static let more = "More".localized
        }
        
        static let startYourJourneyWithUs = "Start your journey with us".localized
        static let iLearnAboutAsceticism = "I learn about asceticism".localized
        
        enum StartYourJourney {
            static let startUmrah = "Start Umrah".localized
            static let startHajj = "Start Hajj".localized
        }
        
        enum LearnAboutAsceticism {
            static let completeTheCourse = "Complete the course".localized
            static let startTheCourse = "Start the course".localized
        }
        
        enum Live {
            static let liveBroadcast = "Live broadcast".localized
            static let theProphetMosque = "The Prophet's Mosque".localized
            static let theGrandMosque = "The Grand Mosque".localized
            static let live = "Live".localized
        }
        
        enum News {
            static let news = "News".localized
        }
        
        enum FrequentlyAskedQuestions {
            static let frequentlyAskedQuestions = "Frequently Asked Questions".localized
        }
        
        enum MutawwafCommunity {
            static let mutawwafCommunity = "Mutawwaf community".localized
        }
    }
    
    enum HomeView {
        enum ParyersTime {
            static let maka = "maka".localized
            static let madina = "madina".localized
            static let pray = "pray".localized
            static let fajr = "fajr".localized
            static let shrooq = "shrooq".localized
            static let dohr = "dohr".localized
            static let Aasr = "3asr".localized
            static let mghreb = "mghreb".localized
            static let Aesha2 = "3esha2".localized
            static let mawqeet = "mawqeet".localized
            static let yourLocation = "your location".localized
        }
        
        enum HeaderView {
            static let selectTheCityWhosePrayerTimesYouWouldLikeToDisplay = "Select the city whose prayer times you would like to display".localized
        }
        
        enum FlightTime {
            static let timeLeftForFlight = "Time left for flight:".localized
            static let seconds = "seconds".localized
            static let minutes = "minutes".localized
            static let hours = "hours".localized
            static let days = "days".localized
        }
        
        enum ExploreTheFeatures {
            static let exploreTheFeaturesOfTheMutawif = "Explore the features of the Mutawif".localized
            static let tawafCounter = "Tawaf counter".localized
            static let crowdedConditions = "Crowded conditions".localized
            static let healthStatus = "Health status".localized
        }
        
        enum Supplications {
            static let supplications = "Supplications".localized
        }
        
        enum Currencies {
            static let currencyConverter = "Currency converter".localized
            static let ATMMap = "ATM map".localized
            static let EGP = "EGP".localized
            static let SAR = "SAR".localized
            static let theMaximumForeignCurrency = "The maximum foreign currency limit upon departure is USD 10,000.".localized
        }
        static let placesNotToBeMissed = "Places not to be missed".localized
    }
    
    enum onBoardingView {
        static let skip = "Skip".localized
        enum Purpose {
            static let from = "from".localized
            static let next = "next".localized
            static let purposeOfVisit  = "Purpose Of Visit?".localized
            static let weNeedToTnowThePurpose = "We need to know the purpose of your visit to customize the appropriate guides and steps for you based on the type of ritual or your destination.".localized
            static let umrah = "Umrah".localized;
            static let hajjTamattu = "Hajj Tamattu".localized;
            static let hajjAndQuran = "Hajj and Quran".localized;
            static let hajjMufrad = "Hajj Mufrad".localized;
            static let prayerInTheProphetMosqueTheGrandMosqueInMecca = "Prayer in the Prophet's Mosque - the Grand Mosque in Mecca".localized;
        }
        
        enum Gender {
            static let gender = "gender".localized
            static let weAskThisToSpecify = "We ask this to specify the fiqh guidelines precisely, as some rulings differ between men and women during the ritual.".localized
            static let muslim = "muslim".localized
            static let Moslem = "moslem".localized
        }
        
        enum Age {
            static let howOldAreYou =  "How old are you?".localized
            static let someInstructionsAndPrecautions =  "Some instructions and precautions vary by age group, and we would like to guide you according to your health condition or physical abilities.".localized
        }
        
        enum HealthConditions {
            static let doYouHaveAnyHealthConditionsOrSpecial = "Do you have any health conditions or special needs that we can take into account during your trip?".localized
            static let weAskThisQuestionToEnsureYourComfort = "We ask this question to ensure your comfort while performing the ritual, and to provide a personalized experience that takes into account your health condition, if any.".localized
            static let noHealthConditions = "No health conditions".localized
            static let iHaveHighBloodPressure = "I have high blood pressure".localized
            static let iSufferFromDiabetes = "I suffer from diabetes".localized
            static let iHaveHeartOrBreathingProblems = "I have heart or breathing problems.".localized
            static let iUseaWheelchairOrMobilityAid = "I use a wheelchair or mobility aid.".localized
            static let ihaveAvisualOrHearingImpairment = "I have a visual or hearing impairment.".localized
            static let other = "Other".localized
        }
        
        enum TellUsMoreAboutYourTrip {
            static let tellUsMoreAboutYourTrip = "Tell us more about your trip".localized
            static let bySpecifyingYourTripDetailsWeCanRemind =  "By specifying your trip details, we can remind you of the correct timing, calculate the Ihram timing, and connect airport services and transportation to the time and place that suits you".localized
            static let enterFlightNumber = "Enter flight number".localized
            static let search = "Search".localized
            static let theFlightNumberIsMadeUpOfLettersAndNumbers = "The flight number is made up of letters and numbers, such as: MS985".localized
            static let InvalidFlightNumber = "Invalid flight number".localized
            static let departureCity = "Departure city".localized
            static let arrivalCity   = "Arrival city".localized
            static let departureDate = "Departure date".localized
            static let departureTime = "departure time".localized
            static let arrivalDate = "Arrival date".localized
            static let arrivalTime  = "Arrival time".localized
            static let youCanChangeTheDateAndTimeOfYourFlightIfNeeded  = "You can change the date and time of your flight if needed".localized
        }
    }
}
