import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { LoginFormComponent } from './login-form/login-form.component';
import { CrudFormComponent } from './crud-form/crud-form.component';

const routes: Routes = [
  {
    path: '',
    component: LoginFormComponent
  },
  {
    path: 'crud',
    component: CrudFormComponent
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
