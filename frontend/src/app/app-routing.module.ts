import {NgModule} from '@angular/core';
import {RouterModule, Routes} from '@angular/router';
import {AppointmentListComponent} from './components/appointment-list/appointment-list.component';
import {EditAppointmentComponent} from './components/edit-appointment/edit-appointment.component';
import {CreateAppointmentComponent} from './components/create-appointment/create-appointment.component';

const routes: Routes = [
  {path: 'appointments', component: AppointmentListComponent, children: [
      {path: 'create', component: CreateAppointmentComponent}
    ]},
  {path: 'detail/:id', component: EditAppointmentComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule {
}
