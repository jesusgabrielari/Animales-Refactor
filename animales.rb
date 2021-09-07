module Habilidades
    module Volador
        def volar
            'Estoy volandooooo!'
        end
        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end
    end

    module Nadador
        def nadar
            'Estoy nadando!'
        end
        def sumergir
            'glu glub glub glu'
        end
    end

    module Caminante
        def caminar
            'Puedo caminar!'
        end
    end
end

module Alimentacion
    module Herbivoro
        def comer
            'Puedo comer plantas!'
        end
    end

    module Carnivoro
        def comer
            'Puedo comer carne!'
        end
    end

    module Omnivoro
        def comer
            'Puedo comer lo que sea!'
        end
    end
end

# SUPER CLASS
class Animal
    attr_reader :name
    def initialize(name)
        @name = name
    end
end

# FIRST CHILDREN
class Bird < Animal
    include Habilidades
    include Alimentacion
end

class Mammal < Animal
    include Habilidades
    include Alimentacion 
end

class Insect < Animal
    include Habilidades
    include Alimentacion
end

# SECONDARY CHILDREN
# FROM BIRD CLASS
class Penguin < Bird
    include Nadador
    include Caminante
    include Carnivoro 
end

class Dove < Bird
    include Volador
    include Caminante
    include Herbivoro
end

class Duck < Bird
    include Volador
    include Caminante
    include Nadador
    include Omnivoro
end

# FROM MAMMAL CLASS
class Dog < Mammal
    include Caminante
    include Nadador
    include Carnivoro
end

class Cat < Mammal
    include Caminante
    include Carnivoro
end

class Cow < Mammal
    include Caminante
    include Herbivoro
end

# FROM INSECT CLASS
class Fly < Insect
    include Volador
    include Caminante
    include Omnivoro
end

class Butterfly < Insect
    include Volador
    include Caminante
    include Herbivoro
end

class Bee < Insect
    include Volador
    include Caminante
    include Herbivoro
end

