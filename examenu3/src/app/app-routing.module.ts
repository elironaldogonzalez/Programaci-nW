import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AnadirContComponent } from './components/components/anadir-cont/anadir-cont.component';
import { ListaContComponent } from './components/components/lista-cont/lista-cont.component';

const routes: Routes = [
  { path: 'anadirCont', component: AnadirContComponent},
  { path: 'listaCont', component: ListaContComponent},
  { path:'*', pathMatch:'full', redirectTo:'añadirCont'}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
