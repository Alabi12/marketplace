# app/helpers/application_helper.rb
module ApplicationHelper
  def smooth_scrolling_js
    <<-JS.html_safe
      document.addEventListener('DOMContentLoaded', function() {
        // Smooth scrolling for anchor links
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
          anchor.addEventListener('click', function(e) {
            e.preventDefault();
            const target = document.querySelector(this.getAttribute('href'));
            if (target) {
              target.scrollIntoView({
                behavior: 'smooth'
              });
            }
          });
        });
        
        // Animation on scroll
        function animateOnScroll() {
          const elements = document.querySelectorAll('.feature-card, .testimonial-card');
          elements.forEach(el => {
            const elementPosition = el.getBoundingClientRect().top;
            const windowHeight = window.innerHeight;
            
            if (elementPosition < windowHeight - 100) {
              el.classList.add('animated');
            }
          });
        }
        
        window.addEventListener('load', animateOnScroll);
        window.addEventListener('scroll', animateOnScroll);
      });
    JS
  end
end