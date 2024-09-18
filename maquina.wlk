object maquina 
{
    const property registro = []

    method registrarProd(valor)
    {
        registro.add(valor)
    }

    method borrarProd(valor)
    {
        registro.remove(valor)
    }

    method algunDiaSeProdujo(cantidad) = registro.contains(cantidad)
    method maximoValorDeProduccion() = registro.max()
    method valoresDeProduccionPares() = registro.filter({e => e.even()})
    
    method produccionEsAcotada(n1,n2) = registro.all({e => e.between(n1, n2)})

    method produccionesSuperioresA(cuanto) = registro.filter({e => e > cuanto})

    method produccionesSumando(n) = registro.map({e => e + n})

    method totalProducido() = registro.sum()

    method ultimoValorDeProduccion() = registro.last()

    method cantidadProduccionesMayorALaPrimera() = registro.count({e => e > registro.first()})
}