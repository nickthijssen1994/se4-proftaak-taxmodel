import {NgModule} from '@angular/core';
import {RouterModule, Routes} from '@angular/router';
import {AppointmentListComponent} from './components/appointment-list/appointment-list.component';
import {CreateAppointmentComponent} from './components/create-appointment/create-appointment.component';

const routes: Routes = [
  {path: 'appointments', component: AppointmentListComponent},
  {path: 'detail/:id', component: CreateAppointmentComponent},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule {
}
