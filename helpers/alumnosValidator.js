export const validateAlumno = (alumno) => {

    alumno.promedio = isNaN(alumno.promedio) ? 1 : parseFloat(alumno.promedio);
    if (
        typeof alumno.nombres !== 'string' || !alumno.nombres ||
        typeof alumno.apellidos !== 'string' || !alumno.apellidos ||
        typeof alumno.matricula !== 'string' || !alumno.matricula ||
        typeof alumno.promedio !== 'number' || alumno.promedio < 0 || alumno.promedio > 10
    ) {
        
        return false;
    }
    
    return true;
};
