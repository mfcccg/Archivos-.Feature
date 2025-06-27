Feature: Configurar recordatorios de estudio
  Como estudiante, quiero configurar recordatorios de estudio para organizar mi tiempo y mantener la constancia.

  Scenario: Crear nuevo recordatorio
    Given que el estudiante accede a la sección de recordatorios
    When programa un nuevo horario
    Then el sistema guarda el recordatorio y activa notificaciones
    Examples:
      | Input Día | Input Hora | Input Tipo           | Output                                |
      | lunes     | 18:00      | repaso general       | Recordatorio guardado y notificación  |

  Scenario: Conflicto con recordatorio existente
    Given que ya existe un recordatorio programado en la misma franja
    When intenta registrar uno nuevo en el mismo horario
    Then el sistema muestra un mensaje de conflicto
    Examples:
      | Input Día | Input Hora | Output                                 |
      | lunes     | 18:00      | Mensaje: “Ya tienes un recordatorio en ese horario.” |

  Scenario: Solicitud de permisos de notificación
    Given que el estudiante no ha otorgado permisos de notificación al sistema
    When configura un recordatorio
    Then el sistema le solicita activar los permisos
    Examples:
      | Input Día | Input Hora | Output                                                |
      | martes    | 20:00      | Mensaje: “Activa las notificaciones para recibir recordatorios.” |
