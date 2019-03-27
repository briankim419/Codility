class ThemedList {
	constructor(containerEl) {
    this.containerEl = containerEl;
  	this.themeList = ['light','dark','blue'];
  	this.buttonEls = document.querySelectorAll('.js-list-item-theme button');
 		this.initActions();
  }

  initActions() {
    const listItemEl = this.containerEl.querySelector('.js-item');
		this.bindThemeAction(listItemEl);
    this.bindCloneAction(listItemEl);
	}

  /**
  * Binds the Event Listener for when User clicks the Theme buttons
  */
  bindThemeAction(listItemEl) {
    const buttonEls = listItemEl.querySelectorAll('.js-list-item-theme button');

    for (const buttonEl of buttonEls) {
			buttonEl.addEventListener('click', () => {
        const newThemeClass = buttonEl.dataset.themeClass;
        const listEl = buttonEl.closest('.js-item');

        // Don't do anything if we already have that theme
        if (listEl.classList.contains(newThemeClass)) {
          return;
        }

        for (const otherButtonEl of buttonEls) {
        	if (otherButtonEl != buttonEl) {
          	otherButtonEl.classList.remove('active');
          }
        }
        buttonEl.classList.add('active');

        listEl.classList.remove(...this.themeList)
        listEl.classList.add(newThemeClass);
        buttonEl.classList.add('active');
      });
    }
  }

	/**
  * Bind the actions for when the clone button is clicked
  */
	bindCloneAction(listItemEl) {
    const cloneItemEl = listItemEl.querySelector('.js-clone-item');
    const listEl = listItemEl.closest('.js-item');
    cloneItemEl.addEventListener('click', () => {
      const newClonedEl = listEl.cloneNode(true);
      this.containerEl.appendChild(newClonedEl);
      this.bindCloneAction(newClonedEl);
      this.bindThemeAction(newClonedEl);
    });
  }
}

// Create a new themed list
const themedList = new ThemedList(document.getElementById('js-list'));
