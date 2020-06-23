import {Component, Inject, LOCALE_ID, OnInit} from '@angular/core';

interface Language {
  value: string;
  viewValue: string;
  code: string;
}

@Component({
  selector: 'app-language-selector',
  templateUrl: './language-selector.component.html',
  styleUrls: ['./language-selector.component.css']
})
export class LanguageSelectorComponent implements OnInit {

  selectedLanguage: Language;

  languages: Language[] = [
    {value: 'English', viewValue: 'assets/EN.png', code: 'en'},
    {value: 'Nederlands', viewValue: 'assets/NL.png', code: 'nl'},
  ];

  constructor(@Inject(LOCALE_ID) protected localeId: string) {}

  ngOnInit(): void {
    this.selectedLanguage = this.languages.find(language => language.code === this.localeId);
  }

}
