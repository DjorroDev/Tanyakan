import './bootstrap';

import { createApp, h } from 'vue'
import { createInertiaApp } from '@inertiajs/inertia-vue3'
import Layout from './Layouts/Layout'

createInertiaApp({
  resolve: name => {
    let page = require(`./Pages/${name}`).default

    // Check if there is no layout, use default
    page.layout ??= Layout;

    return page;
},
  setup({ el, App, props, plugin }) {
    createApp({ render: () => h(App, props) })
      .use(plugin)
      .mount(el)
  },
})