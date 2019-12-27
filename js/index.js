import '../css/style.scss'
import '@fortawesome/fontawesome-free/js/all.min'

import { Elm } from '../src/Main.elm'

Elm.Main.init({
    node: document.getElementById('elm')
})