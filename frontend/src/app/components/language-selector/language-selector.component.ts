import { Component, OnInit } from '@angular/core';

interface Language {
  value: string;
  viewValue: string;
  locale: string;
}

@Component({
  selector: 'app-language-selector',
  templateUrl: './language-selector.component.html',
  styleUrls: ['./language-selector.component.css']
})
export class LanguageSelectorComponent implements OnInit {

  selectedLanguage: Language;

  languages: Language[] = [
    {value: 'English', viewValue: '../../../assets/EN.png', locale: 'en-US'},
    {value: 'Dutch', viewValue: '../../../assets/NL.png', locale: 'nl'},
  ];

  constructor() { }

  ngOnInit(): void {
    this.selectedLanguage = this.languages[0];
  }

}
