import {Component} from '@angular/core';
import AfspraakRepository from '../repositories/repositories/AfspraakRepository';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'TaxBreak';

  async getRandom() {
    const response = await AfspraakRepository.getAll();
    console.log(response);
  }
}
