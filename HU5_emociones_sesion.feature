Feature: Análisis emocional de la sesión

  Scenario Outline: Visualizar emociones detectadas
    Given se ha recolectado información emocional de los estudiantes
    When el docente accede al resumen gráfico de la sesión
    Then se muestra una gráfica con la distribución de emociones detectadas

    Examples:
      | input                                   | output                                                           |
      | Datos emocionales recolectados por sesión | Gráfica de barras o torta con porcentajes de emociones (feliz, estresado, aburrido, etc.) |

  Scenario Outline: Sesión sin datos emocionales
    Given no se recolectó información emocional en una sesión específica
    When el docente intenta ver el resumen gráfico
    Then el sistema muestra un mensaje indicando que no hay datos suficientes

    Examples:
      | input                      | output                                                     |
      | Sesión sin registros emocionales | Mensaje: “No hay datos emocionales disponibles para esta sesión.” |

  Scenario Outline: Filtrar emociones por grupo o alumno
    Given el docente quiere analizar emociones por grupo o alumno
    When aplica un filtro específico en el resumen
    Then la gráfica se actualiza mostrando solo los datos correspondientes

    Examples:
      | input                   | output                                         |
      | Filtro aplicado (grupo A, estudiante X) | Gráfica actualizada según el filtro |