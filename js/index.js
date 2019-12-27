import '../css/style.scss'
import '@fortawesome/fontawesome-free/js/all.min'

import { Elm } from '../src/Main.elm'
import { config } from '@fortawesome/fontawesome-svg-core'
config.autoReplaceSvg = false

Elm.Main.init({
    node: document.getElementById('elm')
})