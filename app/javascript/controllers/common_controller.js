import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ['container']
  connect() {
    this.containerTargets.forEach(container => container.style.minHeight = `${window.innerHeight - 66}px`)
  }
}
