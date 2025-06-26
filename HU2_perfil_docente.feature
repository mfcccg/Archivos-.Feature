Feature: Visualización del perfil docente

  Scenario Outline: Visualizar información del docente
    Given el estudiante se encuentra en la lista de profesores
    When hace clic en "<accion>"
    Then podrá visualizar la información del profesor

    Examples:
      | input                                     | accion                   | output                                       |
      | Estudiante autenticado, clic en botón de información | Ver información del docente | Vista detallada del perfil del docente       |

  Scenario Outline: Docente sin evaluaciones
    Given existen profesores con pocas o ninguna valoración
    When el estudiante accede a su perfil
    Then el sistema muestra un mensaje indicando la falta de evaluaciones

    Examples:
      | input                             | output                                                           |
      | Profesor con calificaciones nulas o mínimas | Este docente aún no tiene valoraciones suficientes.               |

  Scenario Outline: Ver lista de docentes disponibles
    Given hay varios profesores disponibles para un curso
    When el estudiante navega por la lista
    Then puede ver varias tarjetas y acceder a los perfiles individualmente

    Examples:
      | input                        | output                                                             |
      | Lista de profesores por curso | Tarjetas con nombres y botones “Ver información” por cada profesor |