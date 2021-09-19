import "@hotwired/turbo-rails";
import { Application } from '@hotwired/stimulus';

import SearchController from "./controllers/search_controller";

const application = Application.start();
application.warnings = true;
application.debug = true;
application.register("search", SearchController);
window.Stimulus = application;
