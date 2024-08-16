 function scrollToSection(section) {
      if (section === 'top') {
        window.scrollTo({ top: 0, behavior: 'smooth' });
      } else {
        const element = document.querySelector(`.${section}`);
        if (element) {
          element.scrollIntoView({ behavior: 'smooth' });
        } else {
          console.error(`Element with class "${section}" not found.`);
        }
      }
    }

    function updateButtonHighlight() {
      const sections = ['contents2', 'contents3', 'contents4'];
      let currentSection = '';

      sections.forEach(section => {
        const element = document.querySelector(`.${section}`);
        if (element) {
          const rect = element.getBoundingClientRect();

          // 화면의 절반만큼 올라온 경우에만 버튼을 활성화
          if (rect.top <= window.innerHeight / 2 && rect.bottom >= window.innerHeight / 2) {
            currentSection = section;
          }
        }
      });

      document.querySelectorAll('.scroll-buttons button').forEach(button => {
        button.classList.remove('active');
      });

      if (currentSection) {
        const activeButtonId = currentSection === 'contents2' ? 'scroll-to-activity'
                          : currentSection === 'contents3' ? 'scroll-to-project'
                          : currentSection === 'contents4' ? 'scroll-to-qualification'
                          : 'scroll-to-top';
        document.querySelector(`#${activeButtonId}`).classList.add('active');
      } else {
        document.querySelector('#scroll-to-top').classList.add('active');
      }
    }

    window.addEventListener('scroll', updateButtonHighlight);

function toggleMenu() {
    const menu = document.getElementById('menu');
    if (menu.classList.contains('hidden')) {
        menu.classList.remove('hidden');
    } else {
        menu.classList.add('hidden');
    }
}
