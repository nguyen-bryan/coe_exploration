import React, { useState } from "react";
import { Question1, Question2, Question3, Question4, Question5, Question6 } from "./Questions";

const QuestionComponent = ({ onNext }) => {
  const [selectedOption, setSelectedOption] = useState("");
  const [currentQuestion, setCurrentQuestion] = useState(1);

  const handleOptionChange = (event) => {
    setSelectedOption(event.target.value);
  };

  const handleNext = (nextQuestion) => {
    // Append the selected option to the array of options for the current question
    onNext(selectedOption);
    
    // Check if it's the final question before allowing transition to results
    if (nextQuestion === 7) {
      // If it's the final question, display the results
      onNext(selectedOption, true); // Pass true as a flag to indicate it's the final question
    } else {
      // If it's not the final question, move to the next question
      onNext(selectedOption, false);
      setCurrentQuestion(nextQuestion);
    }
  };
  

  return (
    <div className="question">
      {currentQuestion === 1 && (
        <Question1
          selectedOption={selectedOption}
          onOptionChange={handleOptionChange}
          onNext={() => handleNext(2)}
        />
      )}

      {currentQuestion === 2 && (
        <Question2
          selectedOption={selectedOption}
          onOptionChange={handleOptionChange}
          onNext={() => handleNext(3)}
        />
      )}

      {currentQuestion === 3 && (
        <Question3
          selectedOption={selectedOption}
          onOptionChange={handleOptionChange}
          onNext={() => handleNext(4)}
        />
      )}

      {currentQuestion === 4 && (
        <Question4
          selectedOption={selectedOption}
          onOptionChange={handleOptionChange}
          onNext={() => handleNext(5)}
        />
      )}

      {currentQuestion === 5 && (
        <Question5
          selectedOption={selectedOption}
          onOptionChange={handleOptionChange}
          onNext={() => handleNext(6)}
        />
      )}

      {currentQuestion === 6 && (
        <Question6
          selectedOption={selectedOption}
          onOptionChange={handleOptionChange}
          onNext={() => handleNext(7)}
        />
      )}

    </div>
  );
};

export default QuestionComponent;



