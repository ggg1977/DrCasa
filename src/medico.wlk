import persona.*
import enfermedad.*

class Medico inherits Persona{
	
	method atender(_paciente,_dosisRemedio){
		_paciente.tomaRemedio(_dosisRemedio)
	}
	
	
	
	override method contraer(_enfermedad){
		super(_enfermedad)
		self.tomaRemedio(100)
	}
	
}

class JefeMedico inherits Medico{
	
	const aCargo = []
	
	override method atender(_paciente, _dosisRemedio){
		super(_paciente, _dosisRemedio)
		aCargo.any(medico => medico.atender(_paciente))
	}
	
}
