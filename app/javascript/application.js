// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

document.addEventListener("DOMContentLoaded", function () {
  const form = document.getElementById("shift-filter-form");
  const loadingIndicator = document.getElementById("loading-indicator");

  if (form) {
    form.addEventListener("submit", function () {
      if (loadingIndicator) {
        loadingIndicator.style.display = "block";
      }
    });
  }
});
