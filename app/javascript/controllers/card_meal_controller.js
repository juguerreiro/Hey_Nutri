import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "card" ]

  connect() {

  }
  open() {

    this.cardTarget.classList.toggle("open")
  }
}