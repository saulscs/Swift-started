# Swift Funciones

## Recursos

[Tema 5.pdf](docs/Tema_5.pdf)

[Tema 6.pdf](docs/Tema_6.pdf)

## Funciones

## Tipos de Closures

Una closure es un bloque de código que puede ser pasado entre
funciones o asignado a variables. Muchos otros lenguajes llaman a
esta característica Lambda Expression o simplemente Lambda.

Es una función sin la palabra clave `func` y sin un nombre. Sin embargo, los Clousures parecen desnudos e incluso incompletos.

```swift
func sumarNumeros(numero1: Int, numero2: Int) -> Int {
 return numero1 + numero2
}

var funcionAlmacenada = sumarNumeros
funcionAlmacenada(5, 9) // 14
```

He almacenado la función sumarNumeros en una variable llamada `funcionAlmacenada`. ¿Pero, cómo es esto posible? Bueno, en Swift, al igual que muchos otros lenguajes de programación, las funciones se describen como una función de primera clase. No sé por qué se llama así, pero puedes almacenar una función en una variable o constante.

Sin embargo, no tenemos que usar la palabra clave `func` para almacenar una función. De hecho, podemos usar un Clousure en su lugar.

```swift
var closureAlmacenado: (Int, Int) -> Int = { (numero1, numero2) in
 return numero1 + numero2
}

closureAlmacenado(numero1: 5, numero2: 9) // 14
```

Los clousures son más o menos como funciones anónimas que se escriben un tanto diferente

### **Capturar Valores**

Los closures capturan el ambiente en el que fueron creados, lo que significa que toman una copia de los valores que son usados dentro de ellos.

### **Escaping Closure**

Un `escaping closure` es un closure que sobrevive a la función a la que se le pasó.

```swift
var completionHandlers: [() -> Void] = []
```

Como los closures se tienen que ejecutar en el momento, Swift no nos permite guardar el closure `completionHandler` en un array para ejecutarlo despues. Para poder hacer esto ultimo, tenemos que agregar el modificador @escaping.

```swift
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}
completionHandlers.count
```

En este caso no es necesario el modificador ya que el closure se va a ejecutar:

```swift
func someFunctionWithNoneEscapingClosure(closure: () -> Void) {
    closure()
}

class SomeClass {
    var x = 10
    func doSomething() {
        someFunctionWithEscapingClosure {
            self.x = 100 // El `self` le indica al closure con el modificador @escaping donde va a estar la variable `x`
        }
        someFunctionWithNoneEscapingClosure {
            x = 200 // En este caso no es necesario el `self` porque el closure se va a ejecutar ahora mismo y sabe donde va a estar la variable `x`
        }
    }
}

let instance = SomeClass()
print(instance.x)		// 10

instance.doSomething()
print(instance.x)		// 200

completionHandlers.count		// 1
completionHandlers.first?()
print(instance.x)		// 100
```

El `self` le indica al closure con el modificador @escaping dónde va a estar la variable `x` para ser utilizada luego.

En el caso del closure `someFunctionWithNoneEscapingClosure` no es necesario el `self` porque el closure se va a ejecutar ahora mismo y sabe dónde va a estar la variable `x`.

> No podéis escapar un clousure sin decirle explícitamente a ese clousure escapante donde encontrar la variable que va a hacer uso.
> 

[https://alexandrefreire.com/closures/](https://alexandrefreire.com/closures/)

**Siempre que el closure tenga que ser almacenado, éste debe ser *@escaping*.**

## Enumeradores

Clase vaga, un enumerado solo tiene un valor disponible no tiene todas las propiedades de una clase. 

Son ciudadanos de primera clase, en si son clases pero con restricciones.