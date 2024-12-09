
#include <Arduino.h>
#include "CommandProcessor.h"

// Define possible commands
const char *words[] = {
    "forward",
    "backward",
    "left",
    "right",
    "_nonsense",
};

// Motor Control Pin Definitions for L293D
const int motorLeftIn1 = 13;   // IN1 for left motor (forward control)
const int motorLeftIn2 = 12;   // IN2 for left motor (backward control)
const int motorRightIn3 = 27;  // IN3 for right motor (forward control)
const int motorRightIn4 = 14;  // IN4 for right motor (backward control)

void commandQueueProcessorTask(void *param)
{
    CommandProcessor *commandProcessor = (CommandProcessor *)param;
    while (true)
    {
        uint16_t commandIndex = 0;
        if (xQueueReceive(commandProcessor->m_command_queue_handle, &commandIndex, portMAX_DELAY) == pdTRUE)
        {
            commandProcessor->processCommand(commandIndex);
        }
    }
}

// Process Commands to Control Motor Directions
void CommandProcessor::processCommand(uint16_t commandIndex)
{
    digitalWrite(GPIO_NUM_2, HIGH);  // Optional LED indicator for command processing

    switch (commandIndex)
    {
    case 0: // Forward
        digitalWrite(motorLeftIn1, HIGH);
        digitalWrite(motorLeftIn2, LOW);
        digitalWrite(motorRightIn3, HIGH);
        digitalWrite(motorRightIn4, LOW);
        vTaskDelay(1000 / portTICK_PERIOD_MS);  // Move forward for 1 second
        break;

    case 1: // Backward
        digitalWrite(motorLeftIn1, LOW);
        digitalWrite(motorLeftIn2, HIGH);
        digitalWrite(motorRightIn3, LOW);
        digitalWrite(motorRightIn4, HIGH);
        vTaskDelay(1000 / portTICK_PERIOD_MS);  // Move backward for 1 second
        break;

    case 2: // Left Turn
        digitalWrite(motorLeftIn1, LOW);
        digitalWrite(motorLeftIn2, HIGH);
        digitalWrite(motorRightIn3, HIGH);
        digitalWrite(motorRightIn4, LOW);
        vTaskDelay(500 / portTICK_PERIOD_MS);  // Turn left for 0.5 seconds
        break;

    case 3: // Right Turn
        digitalWrite(motorLeftIn1, HIGH);
        digitalWrite(motorLeftIn2, LOW);
        digitalWrite(motorRightIn3, LOW);
        digitalWrite(motorRightIn4, HIGH);
        vTaskDelay(500 / portTICK_PERIOD_MS);  // Turn right for 0.5 seconds
        break;
    }

    // Stop motors after command execution
    stopMotors();

    digitalWrite(GPIO_NUM_2, LOW);  // Turn off command indicator
}

// Stop all motors by setting all inputs to LOW
void CommandProcessor::stopMotors()
{
    digitalWrite(motorLeftIn1, LOW);
    digitalWrite(motorLeftIn2, LOW);
    digitalWrite(motorRightIn3, LOW);
    digitalWrite(motorRightIn4, LOW);
}

CommandProcessor::CommandProcessor()
{
    pinMode(GPIO_NUM_2, OUTPUT);  // Optional indicator LED

    // Set up motor control pins as OUTPUT
    pinMode(motorLeftIn1, OUTPUT);
    pinMode(motorLeftIn2, OUTPUT);
    pinMode(motorRightIn3, OUTPUT);
    pinMode(motorRightIn4, OUTPUT);

    // Create command queue with a capacity for 5 commands
    m_command_queue_handle = xQueueCreate(5, sizeof(uint16_t));
    if (!m_command_queue_handle)
    {
        Serial.println("Failed to create command queue");
    }

    // Start the command processing task
    TaskHandle_t command_queue_task_handle;
    xTaskCreate(commandQueueProcessorTask, "Command Queue Processor", 1024, this, 1, &command_queue_task_handle);
}

// Queue command for execution
void CommandProcessor::queueCommand(uint16_t commandIndex, float best_score)
{
    if (commandIndex != 5 && commandIndex != -1)
    {
        Serial.printf("***** %ld Detected command %s(%f)\n", millis(), words[commandIndex], best_score);
        if (xQueueSendToBack(m_command_queue_handle, &commandIndex, 0) != pdTRUE)
        {
            Serial.println("No more space for command");
        }
    }
}

