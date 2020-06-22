import {registerLocaleData} from '@angular/common';
import {HttpClientModule} from '@angular/common/http';
import localeNlExtra from '@angular/common/locales/extra/nl';
import localeNl from '@angular/common/locales/nl';
import {NgModule} from '@angular/core';
import {FormsModule} from '@angular/forms';
import {MatButtonModule} from '@angular/material/button';
import {MatCardModule} from '@angular/material/card';
import {MatCheckboxModule} from '@angular/material/checkbox';
import {MatNativeDateModule} from '@angular/material/core';
import {MatDatepickerModule} from '@angular/material/datepicker';
import {MatDialogModule} from '@angular/material/dialog';
import {MAT_FORM_FIELD_DEFAULT_OPTIONS} from '@angular/material/form-field';
import {MatGridListModule} from '@angular/material/grid-list';
import {MatIconModule} from '@angular/material/icon';
import {MatInputModule} from '@angular/material/input';
import {MatListModule} from '@angular/material/list';
import {MatMenuModule} from '@angular/material/menu';
import {MatSelectModule} from '@angular/material/select';
import {MatSidenavModule} from '@angular/material/sidenav';
import {MatSnackBarModule} from '@angular/material/snack-bar';
import {MatTableModule} from '@angular/material/table';
import {MatToolbarModule} from '@angular/material/toolbar';
import {BrowserModule} from '@angular/platform-browser';
import {BrowserAnimationsModule} from '@angular/platform-browser/animations';
import {RouterModule} from '@angular/router';
import {FullCalendarModule} from '@fullcalendar/angular';
import {NgxMaterialTimepickerModule} from 'ngx-material-timepicker';
import {AppRoutingModule} from './app-routing.module';
import {AppComponent} from './app.component';
import {AuthGuard} from './auth.guard';
import {AuthService} from './authentication.service';
import {AccountComponent} from './components/account/account.component';
import {AppointmentListComponent} from './components/appointment-list/appointment-list.component';
import {AppointmentViewComponent} from './components/appointment-view/appointment-view.component';
import {AppointmentComponent} from './components/appointment/appointment.component';
import {CalendarComponent} from './components/calendar/calendar.component';
import {CreateAppointmentComponent} from './components/create-appointment/create-appointment.component';
import {DashboardComponent} from './components/dashboard/dashboard.component';
import {DeleteAppointmentModalComponent} from './components/delete-appointment-modal/delete-appointment-modal.component';
import {EditAppointmentComponent} from './components/edit-appointment/edit-appointment.component';
import {LanguageSelectorComponent} from './components/language-selector/language-selector.component';
import {LoginComponent} from './components/login/login.component';
import {OrderComponent} from './components/order/order.component';
import {RegisterComponent} from './components/register/register.component';
import {LoginGuard} from './login.guard';

registerLocaleData(localeNl, 'nl', localeNlExtra);

@NgModule({
  declarations: [
    AppComponent,
    AccountComponent,
    OrderComponent,
    AppointmentComponent,
    EditAppointmentComponent,
    CreateAppointmentComponent,
    AppointmentListComponent,
    DashboardComponent,
    CalendarComponent,
    AppointmentViewComponent,
    LoginComponent,
    RegisterComponent,
    DeleteAppointmentModalComponent,
    LanguageSelectorComponent
  ], imports: [
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
    NgxMaterialTimepickerModule,
    MatSnackBarModule,
    MatNativeDateModule,
    MatSidenavModule,
    MatTableModule,
    MatIconModule,
    FullCalendarModule,
    MatMenuModule,
  ], bootstrap: [AppComponent], providers: [
    AuthService, LoginGuard, AuthGuard, {provide: MAT_FORM_FIELD_DEFAULT_OPTIONS, useValue: {appearance: 'fill'}},
  ]
})
export class AppModule {
}
