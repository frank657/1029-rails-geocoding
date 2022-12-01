# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin_all_from "app/javascript/components", under: "components"
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "vue", to: 'https://cdn.jsdelivr.net/npm/vue@2.6.14/dist/vue.esm.browser.min.js'
pin "vue-turbolinks", to: "https://ga.jspm.io/npm:vue-turbolinks@2.2.2/index.js"
pin "bootstrap", to: "https://ga.jspm.io/npm:bootstrap@5.1.3/dist/js/bootstrap.esm.js"
pin "@popperjs/core", to: "https://ga.jspm.io/npm:@popperjs/core@2.11.5/lib/index.js"
