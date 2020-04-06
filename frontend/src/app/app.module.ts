import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppComponent } from './app.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { AccountComponent } from './components/account/account.component';
import { OrderComponent } from './components/order/order.component';
import { AppointmentComponent } from './components/appointment/appointment.component';
import { CreateAppointmentComponent } from './components/create-appointment/create-appointment.component';
import {RouterModule} from '@angular/router';
import { AppointmentListComponent } from './components/appointment-list/appointment-list.component';

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
    RouterModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
