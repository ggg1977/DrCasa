import enfermedad.*

class Persona {
		var property enfermedades = []
		
		const maxTemperatura = 45
		
		var property celulasTotales
		
		var property temperatura = 36
		
		method vivirUnDia(){
			self.enfermedades().filter({enfermedad=>enfermedad().tipo().nombreTipo()=="Autoinmune"}).forEach({autoinmune=>autoinmune.unDiaMas()})
		}
		
		method tomaRemedio(_cantidad){
			self.enfermedades().map{enfermedad => enfermedad.atenuar(15 * _cantidad)}
		}	
		
		method celulasTotales(n){
			self.celulasTotales() = n
		}
		
		method contraer(_enfermedad){
			self.enfermedades().add(_enfermedad)
			self.enfermedades().foreach{enfermedad=>enfermedad.afectar(self)}
			
		}
	
}
