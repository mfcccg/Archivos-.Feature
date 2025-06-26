Feature: Análisis emocional de la sesión

  Scenario: Visualizar emociones detectadas
    Given se ha recolectado información emocional de los estudiantes
    When el docente accede al resumen gráfico de la sesión
    Then se muestra una gráfica con la distribución de emociones detectadas

    Ejemplo:
      | datos emocionales disponibles | tipo de gráfica |
      | sí                            | barras/torta    |

  Scenario: Sin datos emocionales
    Given no se recolectó información emocional en una sesión específica
    When el docente intenta ver el resumen gráfico
    Then el sistema muestra un mensaje indicando que no hay datos suficientes

    Ejemplo:
      | datos emocionales disponibles | mensaje mostrado                              |
      | no                            | “No hay datos emocionales disponibles para esta sesión.” |

  Scenario: Filtrar por grupo o alumno
    Given el docente quiere analizar emociones por grupo o alumno
    When aplica un filtro específico en el resumen
    Then la gráfica se actualiza mostrando solo los datos correspondientes

    Ejemplo:
      | filtro aplicado   | gráfica actualizada |
      | grupo A, alumno X | sí                  |