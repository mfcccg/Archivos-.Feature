Feature: Visualización de evaluaciones por el docente

  Scenario: Ver evaluaciones recibidas
    Given el docente inicia sesión en la plataforma
    When accede a la sección de “Evaluaciones recibidas”
    Then puede ver las puntuaciones y comentarios que dejaron los estudiantes

    Ejemplo:
      | docente autenticado | evaluaciones visibles |
      | sí                  | sí                    |

  Scenario: Docente sin evaluaciones
    Given el docente no ha sido evaluado aún
    When accede a la sección de evaluaciones
    Then el sistema muestra un mensaje indicando que no hay comentarios disponibles

    Ejemplo:
      | evaluaciones registradas | mensaje mostrado                        |
      | 0                        | “Aún no tienes evaluaciones registradas.” |

  Scenario: Filtrar evaluaciones
    Given el docente tiene múltiples evaluaciones
    When utiliza los filtros disponibles (por sesión, fecha, etc.)
    Then el sistema muestra solo las evaluaciones correspondientes al criterio seleccionado

    Ejemplo:
      | filtro aplicado         | evaluaciones mostradas |
      | solo sesiones de mayo  | sí                     |