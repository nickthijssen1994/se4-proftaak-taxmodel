import {Component} from '@angular/core';
import AfspraakRepository from '../service/repositories/AfspraakRepository';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  data: string;
  title = 'frontend';

  async getRandom() {
    const response = await AfspraakRepository.getAll();
    console.log(response);
  }
}
