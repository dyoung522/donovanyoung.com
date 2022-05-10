import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["toggleable"]

  toggle() {
    this.toggleableTarget.classList.toggle("max-h-0");
    this.toggleableTarget.classList.toggle("max-h-[32rem]");
  }
}
