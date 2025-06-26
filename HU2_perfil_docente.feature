Feature: Visualización del perfil docente

  Scenario: Visualizar información del docente
    Given el estudiante se encuentra en la lista de profesores
    When hace clic en “Ver información del docente”
    Then podrá visualizar la información del profesor (nombre, curso, valoración, horarios)

    Ejemplo:
      | estudiante | acción                        | resultado                         |
      | autenticado| clic en “Ver información”     | vista detallada del profesor      |

  Scenario: Docente sin evaluaciones
    Given existen profesores con pocas o ninguna valoración
    When el estudiante accede a su perfil
    Then el sistema muestra un mensaje indicando la falta de evaluaciones

    Ejemplo:
      | docente sin valoraciones | mensaje mostrado                            |
      | sí                      | “Este docente aún no tiene valoraciones suficientes.” |

  Scenario: Ver lista de docentes disponibles
    Given hay varios profesores disponibles para un curso
    When el estudiante navega por la lista
    Then puede ver varias tarjetas y acceder a los perfiles individualmente

    Ejemplo:
      | curso con múltiples profesores | tarjetas visibles |
      | sí                            | sí                |