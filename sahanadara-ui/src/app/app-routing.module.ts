import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { ListReliefRequestsComponent } from './list-relief-requests/list-relief-requests.component';


const routes: Routes = [
  { path: '', redirectTo: 'list-relief-requests', pathMatch: 'full'},
  { path: 'list-relief-requests', component: ListReliefRequestsComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
