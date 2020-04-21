import {BrowserModule} from '@angular/platform-browser';
import {NgModule} from '@angular/core';
import {HttpClientModule} from '@angular/common/http';

import {AppComponent} from './app.component';
import {BrowserAnimationsModule} from '@angular/platform-browser/animations';
import {AccountComponent} from './components/account/account.component';
import {OrderComponent} from './components/order/order.component';
import {AppointmentComponent} from './components/appointment/appointment.component';
import {EditAppointmentComponent} from './components/edit-appointment/edit-appointment.component';
import {RouterModule} from '@angular/router';
import {AppointmentListComponent} from './components/appointment-list/appointment-list.component';
import {FormsModule} from '@angular/forms';
import {AppRoutingModule} from './app-routing.module';
import {MatListModule} from '@angular/material/list';
import {MatToolbarModule} from '@angular/material/toolbar';
import {MatButtonModule} from '@angular/material/button';
import {MatInputModule} from '@angular/material/input';
import {MatSelectModule} from '@angular/material/select';
import {MatCardModule} from '@angular/material/card';
import {MatDatepickerModule} from '@angular/material/datepicker';
import {CreateAppointmentComponent} from './components/create-appointment/create-appointment.component';
import {NgxMaterialTimepickerModule} from 'ngx-material-timepicker';
import {MatCheckboxModule} from '@angular/material/checkbox';
import {MatDialogModule} from '@angular/material/dialog';
import { DashboardComponent } from './components/dashboard/dashboard.component';
import {MatGridListModule} from '@angular/material/grid-list';

@NgModule({
  declarations: [
    AppComponent,
    AccountComponent,
    OrderComponent,
    AppointmentComponent,
    EditAppointmentComponent,
    CreateAppointmentComponent,
    AppointmentListComponent,
    DashboardComponent
  ],
  imports: [
    BrowserModule,
    BrowserAnimationsModule,
    RouterModule,
    HttpClientModule,
    FormsModule,
    AppRoutingModule,
    MatGridListModule,
    MatListModule,
    MatToolbarModule,
    MatButtonModule,
    MatInputModule,
    MatDialogModule,
    MatSelectModule,
    MatCardModule,
    MatDatepickerModule,
    MatCheckboxModule,
    NgxMaterialTimepickerModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule {
}
