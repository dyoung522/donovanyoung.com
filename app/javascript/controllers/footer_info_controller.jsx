import * as React from "react";
import { Controller } from "@hotwired/stimulus";
import { createRoot } from "react-dom/client";
import FooterInfo from "../components/FooterInfo";

export default class extends Controller {
  static values = { railsVersion: String };

  connect() {
    createRoot(this.element).render(<FooterInfo railsVersion={this.railsVersionValue} />);
  }
}
