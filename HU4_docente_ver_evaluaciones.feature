Feature: Visualización de evaluaciones por el docente

  Scenario Outline: Ver evaluaciones recibidas
    Given el docente inicia sesión en la plataforma
    When accede a la sección de “Evaluaciones recibidas”
    Then puede ver las puntuaciones y comentarios que dejaron los estudiantes

    Examples:
      | input                        | output                                               |
      | Usuario docente autenticado | Listado de evaluaciones con puntajes y comentarios visibles |

  Scenario Outline: Docente sin evaluaciones
    Given el docente no ha sido evaluado aún
    When accede a la sección de evaluaciones
    Then el sistema muestra un mensaje indicando que no hay comentarios disponibles

    Examples:
      | input                          | output                                             |
      | Usuario docente con 0 evaluaciones | Mensaje: “Aún no tienes evaluaciones registradas.” |

  Scenario Outline: Filtrar evaluaciones
    Given el docente tiene múltiples evaluaciones
    When utiliza los filtros disponibles (por sesión, fecha, etc.)
    Then el sistema muestra solo las evaluaciones correspondientes al criterio seleccionado

    Examples:
      | input                         | output                                            |
      | Filtro aplicado (ej. “solo sesiones de mayo”) | Evaluaciones correspondientes al filtro aplicado |