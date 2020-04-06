import {BrowserModule} from '@angular/platform-browser';
import {NgModule} from '@angular/core';
import {HttpClientModule} from '@angular/common/http';
import {HttpClientInMemoryWebApiModule} from 'angular-in-memory-web-api';
import {InMemoryDataService} from './services/in-memory-data.service';

import {AppComponent} from './app.component';
import {BrowserAnimationsModule} from '@angular/platform-browser/animations';
import {AccountComponent} from './components/account/account.component';
import {OrderComponent} from './components/order/order.component';
import {AppointmentComponent} from './components/appointment/appointment.component';
import {CreateAppointmentComponent} from './components/create-appointment/create-appointment.component';
import {RouterModule} from '@angular/router';
import {AppointmentListComponent} from './components/appointment-list/appointment-list.component';
import {FormsModule} from '@angular/forms';
import { AppRoutingModule } from './app-routing.module';
import {MatListModule} from '@angular/material/list';
import {MatToolbarModule} from '@angular/material/toolbar';
import {MatButtonModule} from '@angular/material/button';
import {MatInputModule} from '@angular/material/input';
import {MatSelectModule} from '@angular/material/select';
import {MatCardModule} from '@angular/material/card';
import {MatDatepickerModule} from '@angular/material/datepicker';

@NgModule({
  declarations: [
    AppComponent,
    AccountComponent,
    OrderComponent,
    AppointmentComponent,
    CreateAppointmentComponent,
    AppointmentListComponent
  ],
  imports: [
    BrowserModule,
    BrowserAnimationsModule,
    RouterModule,
    HttpClientModule,
    FormsModule,
    AppRoutingModule,
    MatListModule,
    MatToolbarModule,
    MatButtonModule,
    MatInputModule,
    MatSelectModule,
    MatCardModule,
    HttpClientInMemoryWebApiModule.forRoot(
      InMemoryDataService, {dataEncapsulation: false}
    ),
    MatDatepickerModule,
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule {
}
