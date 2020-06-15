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
import {DashboardComponent} from './components/dashboard/dashboard.component';
import {MatGridListModule} from '@angular/material/grid-list';
import {BrowserModule} from '@angular/platform-browser';
import {NgModule} from '@angular/core';
import {AppComponent} from './app.component';
import {BrowserAnimationsModule} from '@angular/platform-browser/animations';
import {HttpClientModule} from '@angular/common/http';
import {FullCalendarModule} from '@fullcalendar/angular';
import {CalendarComponent} from './components/calendar/calendar.component';
import {AppointmentViewComponent} from './components/appointment-view/appointment-view.component';
import {MatSnackBarModule} from '@angular/material/snack-bar';
import {MatNativeDateModule} from '@angular/material/core';
import {LoginComponent} from './components/login/login.component';
import {RegisterComponent} from './components/register/register.component';
import {MatSidenavModule} from '@angular/material/sidenav';
import {MatTableModule} from '@angular/material/table';
import {MatIconModule} from '@angular/material/icon';
import {AuthService} from './authentication.service';
import {LoginGuard} from './login.guard';
import {AuthGuard} from './auth.guard';
import {MAT_FORM_FIELD_DEFAULT_OPTIONS} from '@angular/material/form-field';
import {MatMenuModule} from '@angular/material/menu';
import { LanguageSelectorComponent } from './components/language-selector/language-selector.component';

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
        FullCalendarModule,
        MatSnackBarModule,
        MatNativeDateModule,
        MatSidenavModule,
        MatTableModule,
        MatIconModule,
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
        FullCalendarModule,
        MatSnackBarModule,
        MatNativeDateModule,
        MatMenuModule,
    ], bootstrap: [AppComponent], providers: [
        AuthService, LoginGuard, AuthGuard, {provide: MAT_FORM_FIELD_DEFAULT_OPTIONS, useValue: {appearance: 'fill'}},
    ]
})
export class AppModule {
}
