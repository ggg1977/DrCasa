import persona.*

class Enfermedad {
	
	var property celulasAmenazadas
	
	const property tipo 
	
	const property nombre
	
	method atenuar(n){		
		self.celulasAmenazadas() = self.celulasAmenazadas() - n		
	}
	
	method esAgresiva(persona){
		return tipo.esAgresiva(persona)
	} 
	
	method afectar(persona)
	
}


class Infecciosa {
	
	const nombreTipo = "Infecciosa"

	method esAgresiva(persona){
		return persona.celulasAmenazadas() > (persona.celulasTotales()*0.1)	
	}
	
	method reproducirse(){}
}

class Autoinmune {
	
	const nombreTipo = "Autoinmune"
	
	var property diasDeContagio
	
	method unDiaMas(){
		self.diasDeContagio() = self.diasDeContagio()+1
	}
	
	method esAgresiva() {
		 return self.diasDeContagio() > 30	
	}
}
