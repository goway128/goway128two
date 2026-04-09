document.addEventListener('DOMContentLoaded', () => {
  const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        entry.target.classList.add('visible');
        observer.unobserve(entry.target);   
      }
    });
  }, {
    threshold: 0.15,
    rootMargin: '0px 0px -80px 0px'
  });

  const selectors = `
    article.post, 
    .card, 
    .post-preview, 
    .post-content > *, 
    section, 
    .home-section,
    .archive-item
  `;

  let delayIndex = 0;
  document.querySelectorAll(selectors).forEach(el => {
    if (!el.classList.contains('animate-on-scroll')) {
      el.classList.add('animate-on-scroll');
      el.style.transitionDelay = `${delayIndex * 40}ms`;
      observer.observe(el);
      delayIndex++;
    }
  });

  
