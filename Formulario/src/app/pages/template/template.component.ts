import { Component, OnInit } from '@angular/core';
import { NgForm } from '@angular/forms';

@Component({
  selector: 'app-template',
  templateUrl: './template.component.html',
  styleUrls: ['./template.component.css']
})
export class TemplateComponent implements OnInit {

  info = {
    nombre: 'Juan',
    apellido: 'Ramirez',
    correo: 'JR@gmail.com'
  };
  
  constructor() { }

  ngOnInit(): void {
  }

  guardar(formulario){
    console.log(formulario.form.value);
  }
}
