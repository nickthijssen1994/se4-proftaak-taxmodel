import {NgModule} from '@angular/core';
import {RouterModule, Routes} from '@angular/router';
import {AppointmentListComponent} from './components/appointment-list/appointment-list.component';
import {EditAppointmentComponent} from './components/edit-appointment/edit-appointment.component';
import {CreateAppointmentComponent} from './components/create-appointment/create-appointment.component';
import {DashboardComponent} from './components/dashboard/dashboard.component';
import {LoginComponent} from './components/login/login.component';
import {RegisterComponent} from './components/register/register.component';

const routes: Routes = [
  {path: 'dashboard', component: DashboardComponent},
  {path: 'appointments', component: AppointmentListComponent},
  {path: 'create', component: CreateAppointmentComponent},
  {path: 'detail/:id', component: EditAppointmentComponent},
  {path: 'login', component: LoginComponent},
  {path: 'register', component: RegisterComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule {
}
