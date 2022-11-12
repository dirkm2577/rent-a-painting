import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="auto-calculate-cost"
export default class extends Controller {
  static targets = ["costMessage", "bookingDate", "form"]
  connect() {
    console.dir(this.formTarget)
  }

  prevent(event) {
    event.preventDefault()
    console.dir(event.formTarget)
  }

  autocalc(event) {
    console.dir(this.formTarget)
  }
}
