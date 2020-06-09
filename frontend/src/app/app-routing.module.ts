import {NgModule} from '@angular/core';
import {RouterModule, Routes} from '@angular/router';
import {AppointmentListComponent} from './components/appointment-list/appointment-list.component';
import {EditAppointmentComponent} from './components/edit-appointment/edit-appointment.component';
import {CreateAppointmentComponent} from './components/create-appointment/create-appointment.component';
import {DashboardComponent} from './components/dashboard/dashboard.component';
import {CalendarComponent} from './components/calendar/calendar.component';
import {AppointmentViewComponent} from './components/appointment-view/appointment-view.component';
import {LoginComponent} from './components/login/login.component';
import {RegisterComponent} from './components/register/register.component';
import {AuthGuard} from './auth.guard';
import {LoginGuard} from './login.guard';

const routes: Routes = [
  {path: 'dashboard', component: DashboardComponent, canActivate: [AuthGuard]},
  {path: 'appointments', component: AppointmentListComponent, canActivate: [AuthGuard]},
  {path: 'create', component: CreateAppointmentComponent, canActivate: [AuthGuard]},
  {path: 'detail/:id', component: EditAppointmentComponent, canActivate: [AuthGuard]},
  {path: 'calendar', component: CalendarComponent, canActivate: [AuthGuard]},
  {path: 'show', component: AppointmentViewComponent, canActivate: [AuthGuard]},
  {path: 'login', component: LoginComponent, canActivate: [LoginGuard]},
  {path: 'register', component: RegisterComponent, canActivate: [LoginGuard]}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule {
}
