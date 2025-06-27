Feature: Activación de subtítulos en videos
  Como usuario, quiero activar subtítulos en todos los videos para facilitar la comprensión del contenido auditivo.

  Scenario: Activar subtítulos correctamente
    Given que el usuario está viendo un video en la plataforma
    When activa la opción de subtítulos
    Then se muestran subtítulos sincronizados con el audio
    Examples:
      | Input Video         | Output                               |
      | introducción.mp4    | Subtítulos visibles y sincronizados  |

  Scenario: Subtítulos no disponibles
    Given que el video aún no tiene subtítulos cargados
    When el usuario intenta activarlos
    Then el sistema muestra un mensaje informando la ausencia de subtítulos
    Examples:
      | Input Video         | Output                                        |
      | lección-final.mp4   | Mensaje: “Subtítulos no disponibles para este contenido.” |

  Scenario: Alerta por desajuste de subtítulos
    Given que el usuario activa subtítulos en un video largo
    When hay un desajuste entre el audio y los subtítulos
    Then el sistema alerta que los subtítulos pueden estar desfasados
    Examples:
      | Input Video         | Output                                               |
      | historia-larga.mp4  | Mensaje: “Este contenido puede tener subtítulos desfasados.” |