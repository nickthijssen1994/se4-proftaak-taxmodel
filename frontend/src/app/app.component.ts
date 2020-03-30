import {Component} from '@angular/core';
import TestRepository from '../service/repositories/TestRepository';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  data: string;
  title = 'frontend';

  async getRandom() {
    const response = await TestRepository.getRandom();
    this.data = response.data.name;
  }
}
