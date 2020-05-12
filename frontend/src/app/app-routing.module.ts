import {NgModule} from '@angular/core';
import {RouterModule, Routes} from '@angular/router';
import {AppointmentListComponent} from './components/appointment-list/appointment-list.component';
import {EditAppointmentComponent} from './components/edit-appointment/edit-appointment.component';
import {CreateAppointmentComponent} from './components/create-appointment/create-appointment.component';
import {DashboardComponent} from './components/dashboard/dashboard.component';
import {CalendarComponent} from './components/calendar/calendar.component';

const routes: Routes = [
  {path: 'dashboard', component: DashboardComponent},
  {path: '', redirectTo: '/dashboard', pathMatch: 'full'},
  {path: 'appointments', component: AppointmentListComponent},
      {path: 'create', component: CreateAppointmentComponent},
  {path: 'detail/:id', component: EditAppointmentComponent},
  {path: 'calendar', component: CalendarComponent},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule {
}
