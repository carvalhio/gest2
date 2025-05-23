// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@fortawesome/fontawesome-free/css/all"
import "@hotwired/turbo-rails"
import "controllers"
import Rails from "@rails/ujs"
Rails.start()

import "select2"

document.addEventListener("DOMContentLoaded", function() {
  $('.select2-multiple').select2({
    placeholder: "Selecione as disciplinas",
    allowClear: true
  });
});


 document.addEventListener('DOMContentLoaded', () => {
        // Toggle main dropdown
        document.querySelectorAll('.dropdown-toggle').forEach(toggle => {
            toggle.addEventListener('click', (event) => {
                event.preventDefault();
                const dropdownContent = toggle.nextElementSibling;
                dropdownContent.style.display = dropdownContent.style.display === 'block' ? 'none' : 'block';
            });
        });

        // Toggle nested dropdowns
        document.querySelectorAll('.nested-dropdown > a').forEach(link => {
            link.addEventListener('click', (event) => {
                event.preventDefault();
                const nestedContent = link.nextElementSibling;

                // Close sibling dropdowns
                const parentDropdown = link.closest('.dropdown-content, .nested-content');
                parentDropdown.querySelectorAll('.nested-content').forEach(content => {
                    if (content !== nestedContent) {
                        content.style.display = 'none';
                    }
                });

                // Toggle the current nested dropdown
                if (nestedContent) {
                    nestedContent.style.display = nestedContent.style.display === 'block' ? 'none' : 'block';
                }
            });
        });
    });

