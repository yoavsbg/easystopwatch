import { useState } from 'react';
import { logEvent } from 'firebase/analytics';
import { analytics } from './firebase-config';

const FAQItem = ({ question, answer }) => {
  const [isOpen, setIsOpen] = useState(false);

  const handleToggle = () => {
    const newState = !isOpen;
    setIsOpen(newState);
    
    logEvent(analytics, 'faq_interaction', {
      question: question,
      action: newState ? 'expand' : 'collapse'
    });
  };

  return (
    <div className="bg-white bg-opacity-5 rounded-2xl mb-4 overflow-hidden">
      <button
        className="w-full py-4 px-6 flex justify-between items-center text-left hover:bg-opacity-10"
        onClick={handleToggle}
      >
        <span className="font-medium text-white">{question}</span>
        <span className="text-2xl text-gray-400 font-light">{isOpen ? '−' : '+'}</span>
      </button>
      {isOpen && (
        <div className="px-6 pb-4 text-gray-400">
          {answer}
        </div>
      )}
    </div>
  );
};

export default FAQItem;