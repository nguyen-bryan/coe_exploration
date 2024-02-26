import React, { useState } from 'react';
import QuestionComponent from './QuestionComponent';
import ResultsComponent from './ResultsComponent';

const Quiz = () => {
  const [currentPage, setCurrentPage] = useState('question');
  const [userAnswers, setUserAnswers] = useState({});

  const handleNext = (selectedOption, isFinalQuestion) => {
    setUserAnswers(prevAnswers => ({ ...prevAnswers, [currentPage]: selectedOption }));

    // If it's the final question, display results
    if (isFinalQuestion) {
      setCurrentPage('results');
    }
  };

  return (
    <div>
      {currentPage === 'question' && (
        <QuestionComponent onNext={handleNext} />
      )}
      {currentPage === 'results' && (
        <ResultsComponent userAnswers={userAnswers} />
      )}
    </div>
  );
};

export default Quiz;