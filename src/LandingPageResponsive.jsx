import appIcon from './assets/icon_app_60x60.png';
import phoneImage from './assets/phone.png';
import FAQItem from './components/faqItem';
import StarRating from './components/StarRating';
import {analytics} from './config/firebase';
import { logEvent } from 'firebase/analytics';
import { useEffect } from 'react';

const LandingPageResponsive = () => {

    useEffect(() => {
        const referrer = document.referrer;
        if (referrer) {
            logEvent(analytics, 'page_referrer', {
            referrer_url: referrer
            });
        }
        }, []);

    const handleDownloadClick = (platform) => {
        logEvent(analytics, 'app_download_click', {
            platform: platform,
            source: 'landing_page'
        });
        };
    
        const handleTwitterClick = () => {
        logEvent(analytics, 'social_link_click', {
            platform: 'twitter',
            username: 'yoavsbg'
        });
        };

const testimonials = [
    {
        rating: 5,
        text: "Basic, simple and most importantly, it meets the needs. I loved it and recommend it, I use it in my work.",
        author: "Marcelo Sarte de Lima"
    },
    {
        rating: 5,
        text: "Simple but high-quality app, I use it for measuring booting time for operating systems. Definitely recommend 👌",
        author: "Moshe Stein"
    }
    ];
  const faqItems = [
    {
      question: "How do I use Easy Stopwatch?",
      answer: "Simply tap anywhere on the screen to start the stopwatch, and tap again to stop. It's that simple!"
    },
    {
      question: "Does it work offline?",
      answer: "Yes! Easy Stopwatch works completely offline with no internet connection required."
    },
    {
      question: "Is Easy Stopwatch free?",
      answer: "Yes, Easy Stopwatch is completely free to download and use."
    },
    {
      question: "Does it drain my battery?",
      answer: "No, Easy Stopwatch is optimized for minimal battery usage."
    }
  ];

  return (
    <div className="min-h-screen bg-gray-900 text-white">
      {/* Navigation */}
      <nav className="p-6 md:p-8">
        <div className="max-w-6xl mx-auto">
          <div className="flex items-center gap-3">
            <img
              src={appIcon}
              alt="Easy Stopwatch Logo"
              className="w-[60px] rounded-lg"
            />
            <span className="text-2xl font-bold">Easy Stopwatch</span>
          </div>
        </div>
      </nav>

      {/* Hero Section */}
      <section className="px-6 md:px-8 py-12 md:py-24">
        <div className="max-w-6xl mx-auto">
          <div className="grid md:grid-cols-2 gap-12 items-center">
            <div>
              <h1 className="text-4xl md:text-5xl lg:text-6xl font-bold mb-6">
                Get Easy Stopwatch
                <br />
                app today
              </h1>
              <p className="text-gray-400 text-lg md:text-xl mb-8">
                The simplest way to measure time. Just tap to start or stop - no complicated settings, 
                just pure functionality in your pocket.
              </p>
              <div className="space-y-3 md:space-y-4">
                <a 
                  href="https://apps.apple.com/us/app/easy-stopwatch-tap-to-start/id1546825959"
                  className="block w-full md:w-auto md:inline-block bg-blue-500 text-white py-3 px-8 rounded-lg text-center font-semibold hover:bg-blue-600 transition-colors"
                  onClick={() => handleDownloadClick('ios')}
                >
                  Download for iOS
                </a>
                <a 
                  href="https://play.google.com/store/apps/details?id=yoavsabag.easystopwatch"
                  className="block w-full md:w-auto md:inline-block md:ml-4 bg-blue-500 text-white py-3 px-8 rounded-lg text-center font-semibold hover:bg-blue-600 transition-colors"
                  onClick={() => handleDownloadClick('android')}
                >
                  Download for Android
                </a>
              </div>
            </div>
            <div className="flex justify-center">
              <img
                src={phoneImage}
                alt="App Screenshot"
                className="w-full max-w-sm md:max-w-md"
              />
            </div>
          </div>
        </div>
      </section>

      {/* Testimonials Section */}
      <section className="bg-gray-800 px-6 md:px-8 py-16 md:py-24">
        <div className="max-w-6xl mx-auto">
          <h2 className="text-2xl md:text-3xl font-bold mb-8 md:mb-12 text-center">What Users Say</h2>
          <div className="grid md:grid-cols-2 gap-6">
            {testimonials.map((testimonial, index) => (
              <div key={index} className="bg-gray-700 p-6 md:p-8 rounded-lg">
                <StarRating rating={testimonial.rating} />
                <p className="text-gray-300 mb-4 text-lg">{`"${testimonial.text}"`}</p>
                <p className="text-gray-400">- {testimonial.author}</p>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* FAQ Section */}
      <section className="px-6 md:px-8 py-16 md:py-24">
        <div className="max-w-3xl mx-auto">
          <h2 className="text-2xl md:text-3xl font-bold mb-8 md:mb-12 text-center">FAQ</h2>
          <div className="space-y-4">
            {faqItems.map((item, index) => (
              <FAQItem 
                key={index}
                question={item.question}
                answer={item.answer}
              />
            ))}
          </div>
        </div>
      </section>

      {/* Footer */}
      <footer className="px-6 md:px-8 py-8 text-center">
        <div className="space-y-2">
          <p className="text-gray-500 text-sm">
            Copyright © 2024 Easy Stopwatch
          </p>
          <p className="text-gray-500 text-sm">
            Made with 💙 by{' '}
            <a 
              href="https://x.com/yoavsbg" 
              target="_blank" 
              rel="noopener noreferrer"
              className="text-blue-400 hover:text-blue-300 transition-colors"
            >
              Yoav Sabag
            </a>
          </p>
        </div>
      </footer>
    </div>
  );
};

export default LandingPageResponsive;