import {NgModule} from '@angular/core';
import {RouterModule, Routes} from '@angular/router';
import {EditAppointmentComponent} from './components/edit-appointment/edit-appointment.component';
import {DashboardComponent} from './components/dashboard/dashboard.component';
import {CalendarComponent} from './components/calendar/calendar.component';
import {AppointmentViewComponent} from './components/appointment-view/appointment-view.component';
import {LoginComponent} from './components/login/login.component';
import {RegisterComponent} from './components/register/register.component';
import {AuthGuard} from './services/auth.guard';
import {LoginGuard} from './services/login.guard';
import {HomeComponent} from './components/home/home.component';

const routes: Routes = [
  {path: '', component: HomeComponent},
  {path: 'dashboard', component: DashboardComponent, canActivate: [AuthGuard]},
  {path: 'detail/:id', component: EditAppointmentComponent, canActivate: [AuthGuard]},
  {path: 'calendar', component: CalendarComponent, canActivate: [AuthGuard]},
  {path: 'show', component: AppointmentViewComponent, canActivate: [AuthGuard]},
  {path: 'login', component: LoginComponent, canActivate: [LoginGuard]},
  {path: 'register', component: RegisterComponent, canActivate: [LoginGuard]}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)], exports: [RouterModule]
})
export class AppRoutingModule {
}
