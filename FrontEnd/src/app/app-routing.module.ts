import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

import { LoginComponent } from './login/login.component';
import { AreaComponent } from './area/area.component'; 
import { ListaPersonasComponent } from './lista-personas/lista-personas.component';

const routes: Routes = [{
  path: 'login',
  component: LoginComponent
},
{
  path: 'area',
  component: AreaComponent
},
{
  path: 'personas',
  component: ListaPersonasComponent
}];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
