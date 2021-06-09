import { Component, OnInit } from '@angular/core';
import { Contacto, ListaContService } from 'src/app/services/lista-cont.service';

@Component({
  selector: 'app-lista-cont',
  templateUrl: './lista-cont.component.html',
  styleUrls: ['./lista-cont.component.css']
})
export class ListaContComponent implements OnInit {

  contactos: Array<Contacto> = []

  constructor(private servicioContactos: ListaContService) { 
    this.contactos = this.servicioContactos.getContactos();
  }

  ngOnInit(): void {
  }

  mostrar(){
    return console.log(this.contactos)
  }
}
