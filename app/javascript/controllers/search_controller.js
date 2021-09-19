import { Controller } from "@hotwired/stimulus"
import _ from "lodash"
import Rails from "@rails/ujs"

export default class extends Controller {
  static targets = [ "term", "form" ]

  connect () {
    console.log("connected");
    this.termTarget.focus();

    if (this.term.length > 2) {
      this.request();
    }
  }

  keyup() {
    _.debounce(this.request, 250);
  }

  request() {
    if (this.term.length > 2 || this.term === "") {
      this.addQueryString();
      Rails.fire(this.formTarget, "submit");
    }
  }

  update() {
    this.request();
  }

  addQueryString() {
    const formData = new FormData(this.formTarget);
    const formProps = Object.fromEntries(formData);

    if (this.term === "") {
      const cleanURL = location.protocol + "//" + location.host + location.pathname;
      history.replaceState({}, document.title, cleanURL);
    } else {
      history.replaceState(null, null, `?q=${this.term}&school=${formProps.school}`);
    }
  }

  get term() {
    return this.termTarget.value;
  }
}