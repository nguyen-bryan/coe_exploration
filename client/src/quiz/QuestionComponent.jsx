import React, { useState } from "react";

const Question1 = ({ selectedOption, onOptionChange, onNext }) => (
  <div>
    <p>Question 1: WWhat skills do you believe are crucial for success?</p>
    <input
      type="radio"
      name="q1"
      value="Computer Science"
      checked={selectedOption === "Computer Science"}
      onChange={onOptionChange}
    />
    A. Programming, Data Analysis
    <br />
    <input
      type="radio"
      name="q1"
      value="Civil Engineering"
      checked={selectedOption === "Civil Engineering"}
      onChange={onOptionChange}
    />
    B. Design, Project Management
    <br />
    <input
      type="radio"
      name="q1"
      value="Chemistry"
      checked={selectedOption === "Chemistry"}
      onChange={onOptionChange}
    />
    C. Lab Techniques, Analysis
    <br />
    <br />
    <button onClick={onNext}>Next</button>
  </div>
);

const Question2 = ({ selectedOption, onOptionChange, onNext }) => (
  <div>
    <p>
      Question 2: What skills would you like to enhance as you explore
      potential majors?
    </p>
    <input
      type="radio"
      name="q2"
      value="Computer Science"
      checked={selectedOption === "Computer Science"}
      onChange={onOptionChange}
    />
    A. Critical Thinking, Programming
    <br />
    <input
      type="radio"
      name="q2"
      value="Civil Engineering"
      checked={selectedOption === "Civil Engineering"}
      onChange={onOptionChange}
    />
    B. Communication, Problem-solving
    <br />
    <input
      type="radio"
      name="q2"
      value="Chemistry"
      checked={selectedOption === "Chemistry"}
      onChange={onOptionChange}
    />
    C. Attention to Detail, Research Abilities
    <br />
    <br />
    <button onClick={() => onNext()}>Next</button>
  </div>
);

const Question3 = ({ selectedOption, onOptionChange, onNext }) => (
  <div>
    <p>Question 3: Which industry interests you most?</p>
    <input
      type="radio"
      name="q3"
      value="Computer Science"
      checked={selectedOption === "Computer Science"}
      onChange={onOptionChange}
    />
    A. Tech and Software
    <br />
    <input
      type="radio"
      name="q3"
      value="Civil Engineering"
      checked={selectedOption === "Civil Engineering"}
      onChange={onOptionChange}
    />
    B. Infrastructure development
    <br />
    <input
      type="radio"
      name="q3"
      value="Chemistry"
      checked={selectedOption === "Chemistry"}
      onChange={onOptionChange}
    />
    C. Pharmaceutical science
    <br />
    <br />
    <button onClick={() => onNext()}>Next</button>
  </div>
);

const Question4 = ({ selectedOption, onOptionChange, onNext }) => (
  <div>
    <p>Question 4: What project would you enjoy the most?</p>
    <input
      type="radio"
      name="q4"
      value="Computer Science"
      checked={selectedOption === "Computer Science"}
      onChange={onOptionChange}
    />
    A. Software development
    <br />
    <input
      type="radio"
      name="q4"
      value="Civil Engineering"
      checked={selectedOption === "Civil Engineering"}
      onChange={onOptionChange}
    />
    B. Innovative structures/systems
    <br />
    <input
      type="radio"
      name="q4"
      value="Chemistry"
      checked={selectedOption === "Chemistry"}
      onChange={onOptionChange}
    />
    C. CheQmical experiments
    <br />
    <br />
    <button onClick={() => onNext()}>Submit</button>
  </div>
);


const QuestionComponent = ({ onNext }) => {
  const [selectedOption, setSelectedOption] = useState("");
  const [currentQuestion, setCurrentQuestion] = useState(1);

  const handleOptionChange = (event) => {
    setSelectedOption(event.target.value);
  };

  const handleNext = (nextQuestion) => {
    // Check if it's the final question before allowing transition to results
    if (nextQuestion === 5) {
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

    </div>
  );
};

export default QuestionComponent;
