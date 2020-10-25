/* USER CODE BEGIN Header */
/**
 ******************************************************************************
 * @file           : main.c
 * @brief          : Main program body
 ******************************************************************************
 * @attention
 *
 * <h2><center>&copy; Copyright (c) 2020 STMicroelectronics.
 * All rights reserved.</center></h2>
 *
 * This software component is licensed by ST under BSD 3-Clause license,
 * the "License"; You may not use this file except in compliance with the
 * License. You may obtain a copy of the License at:
 *                        opensource.org/licenses/BSD-3-Clause
 *
 ******************************************************************************
 */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
TIM_HandleTypeDef htim1;
TIM_HandleTypeDef htim4;

/* USER CODE BEGIN PV */
volatile uint16_t duty_1 = 0;
volatile uint16_t duty_2 = 0;
volatile uint16_t duty_3 = 0;
volatile uint8_t duty_1_flag = 0;
volatile uint8_t duty_2_flag = 0;
volatile uint8_t duty_3_flag = 0;
const uint16_t duty_max = 499;
const uint32_t debounce_timeout1 = 50;
const uint32_t debounce_long_timeout1 = 1000;
volatile uint32_t elapsed_time1 = 0;
volatile uint32_t current_time1 = 0;
const uint32_t debounce_timeout2 = 50;
volatile uint32_t current_time2 = 0;
volatile uint8_t config_state = 0;
volatile uint8_t led_state = 0;
volatile uint8_t btn_hold_counter = 0;
const uint32_t btn_hold_timeout = 20;

enum {
	IDLE = 0, COLOR1, COLOR2, COLOR3, WHITE, BLUE, RED, GREEN, WAVE, STRIP_RESET
};
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_TIM1_Init(void);
static void MX_TIM4_Init(void);
/* USER CODE BEGIN PFP */
void update_wave(void);
void led_strip_reset(void);
/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
 * @brief  The application entry point.
 * @retval int
 */
int main(void) {
	/* USER CODE BEGIN 1 */

	/* USER CODE END 1 */

	/* MCU Configuration--------------------------------------------------------*/

	/* Reset of all peripherals, Initializes the Flash interface and the Systick. */
	HAL_Init();

	/* USER CODE BEGIN Init */

	/* USER CODE END Init */

	/* Configure the system clock */
	SystemClock_Config();

	/* USER CODE BEGIN SysInit */

	/* USER CODE END SysInit */

	/* Initialize all configured peripherals */
	MX_GPIO_Init();
	MX_TIM1_Init();
	MX_TIM4_Init();
	/* USER CODE BEGIN 2 */
	HAL_TIM_PWM_Start(&htim4, TIM_CHANNEL_1);
	HAL_TIM_PWM_Start(&htim4, TIM_CHANNEL_2);
	HAL_TIM_PWM_Start(&htim4, TIM_CHANNEL_3);

	current_time1 = current_time2 = HAL_GetTick();

	HAL_GPIO_WritePin(GPIOB, GPIO_PIN_3, GPIO_PIN_SET);
	/* USER CODE END 2 */

	/* Infinite loop */
	/* USER CODE BEGIN WHILE */
	while (1) {
		switch (led_state) {
		case WHITE:
			duty_1 = duty_max;
			duty_2 = duty_max;
			duty_3 = duty_max;
			TIM4->CCR1 = duty_1;
			TIM4->CCR2 = duty_2;
			TIM4->CCR3 = duty_3;
			break;

		case BLUE:
			duty_1 = duty_max;
			duty_2 = 0;
			duty_3 = 0;
			TIM4->CCR1 = duty_1;
			TIM4->CCR2 = duty_2;
			TIM4->CCR3 = duty_3;
			break;

		case RED:
			duty_1 = 0;
			duty_2 = duty_max;
			duty_3 = 0;
			TIM4->CCR1 = duty_1;
			TIM4->CCR2 = duty_2;
			TIM4->CCR3 = duty_3;
			break;

		case GREEN:
			duty_1 = 0;
			duty_2 = 0;
			duty_3 = duty_max;
			TIM4->CCR1 = duty_1;
			TIM4->CCR2 = duty_2;
			TIM4->CCR3 = duty_3;
			break;

		case WAVE:
			update_wave();
			break;

		case STRIP_RESET:
			led_strip_reset();
			led_state = IDLE;
			break;
		}

		/* USER CODE END WHILE */

		/* USER CODE BEGIN 3 */
	}
	/* USER CODE END 3 */
}

/**
 * @brief System Clock Configuration
 * @retval None
 */
void SystemClock_Config(void) {
	RCC_OscInitTypeDef RCC_OscInitStruct = { 0 };
	RCC_ClkInitTypeDef RCC_ClkInitStruct = { 0 };

	/** Initializes the CPU, AHB and APB busses clocks
	 */
	RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
	RCC_OscInitStruct.HSEState = RCC_HSE_ON;
	RCC_OscInitStruct.HSEPredivValue = RCC_HSE_PREDIV_DIV1;
	RCC_OscInitStruct.HSIState = RCC_HSI_ON;
	RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
	RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
	RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL9;
	if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK) {
		Error_Handler();
	}
	/** Initializes the CPU, AHB and APB busses clocks
	 */
	RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_SYSCLK
			| RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2;
	RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
	RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
	RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
	RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

	if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK) {
		Error_Handler();
	}
}

/**
 * @brief TIM1 Initialization Function
 * @param None
 * @retval None
 */
static void MX_TIM1_Init(void) {

	/* USER CODE BEGIN TIM1_Init 0 */

	/* USER CODE END TIM1_Init 0 */

	TIM_ClockConfigTypeDef sClockSourceConfig = { 0 };
	TIM_MasterConfigTypeDef sMasterConfig = { 0 };

	/* USER CODE BEGIN TIM1_Init 1 */

	/* USER CODE END TIM1_Init 1 */
	htim1.Instance = TIM1;
	htim1.Init.Prescaler = 9999;
	htim1.Init.CounterMode = TIM_COUNTERMODE_UP;
	htim1.Init.Period = 3599;
	htim1.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
	htim1.Init.RepetitionCounter = 0;
	htim1.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
	if (HAL_TIM_Base_Init(&htim1) != HAL_OK) {
		Error_Handler();
	}
	sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
	if (HAL_TIM_ConfigClockSource(&htim1, &sClockSourceConfig) != HAL_OK) {
		Error_Handler();
	}
	sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
	sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
	if (HAL_TIMEx_MasterConfigSynchronization(&htim1, &sMasterConfig)
			!= HAL_OK) {
		Error_Handler();
	}
	/* USER CODE BEGIN TIM1_Init 2 */

	/* USER CODE END TIM1_Init 2 */

}

/**
 * @brief TIM4 Initialization Function
 * @param None
 * @retval None
 */
static void MX_TIM4_Init(void) {

	/* USER CODE BEGIN TIM4_Init 0 */

	/* USER CODE END TIM4_Init 0 */

	TIM_ClockConfigTypeDef sClockSourceConfig = { 0 };
	TIM_MasterConfigTypeDef sMasterConfig = { 0 };
	TIM_OC_InitTypeDef sConfigOC = { 0 };

	/* USER CODE BEGIN TIM4_Init 1 */

	/* USER CODE END TIM4_Init 1 */
	htim4.Instance = TIM4;
	htim4.Init.Prescaler = 359;
	htim4.Init.CounterMode = TIM_COUNTERMODE_UP;
	htim4.Init.Period = 499;
	htim4.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
	htim4.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
	if (HAL_TIM_Base_Init(&htim4) != HAL_OK) {
		Error_Handler();
	}
	sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
	if (HAL_TIM_ConfigClockSource(&htim4, &sClockSourceConfig) != HAL_OK) {
		Error_Handler();
	}
	if (HAL_TIM_PWM_Init(&htim4) != HAL_OK) {
		Error_Handler();
	}
	sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
	sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
	if (HAL_TIMEx_MasterConfigSynchronization(&htim4, &sMasterConfig)
			!= HAL_OK) {
		Error_Handler();
	}
	sConfigOC.OCMode = TIM_OCMODE_PWM1;
	sConfigOC.Pulse = 0;
	sConfigOC.OCPolarity = TIM_OCPOLARITY_HIGH;
	sConfigOC.OCFastMode = TIM_OCFAST_DISABLE;
	if (HAL_TIM_PWM_ConfigChannel(&htim4, &sConfigOC, TIM_CHANNEL_1)
			!= HAL_OK) {
		Error_Handler();
	}
	if (HAL_TIM_PWM_ConfigChannel(&htim4, &sConfigOC, TIM_CHANNEL_2)
			!= HAL_OK) {
		Error_Handler();
	}
	if (HAL_TIM_PWM_ConfigChannel(&htim4, &sConfigOC, TIM_CHANNEL_3)
			!= HAL_OK) {
		Error_Handler();
	}
	/* USER CODE BEGIN TIM4_Init 2 */

	/* USER CODE END TIM4_Init 2 */
	HAL_TIM_MspPostInit(&htim4);

}

/**
 * @brief GPIO Initialization Function
 * @param None
 * @retval None
 */
static void MX_GPIO_Init(void) {
	GPIO_InitTypeDef GPIO_InitStruct = { 0 };

	/* GPIO Ports Clock Enable */
	__HAL_RCC_GPIOC_CLK_ENABLE()
	;
	__HAL_RCC_GPIOD_CLK_ENABLE()
	;
	__HAL_RCC_GPIOA_CLK_ENABLE()
	;
	__HAL_RCC_GPIOB_CLK_ENABLE()
	;

	/*Configure GPIO pin Output Level */
	HAL_GPIO_WritePin(GPIOB, GPIO_PIN_3 | GPIO_PIN_4, GPIO_PIN_RESET);

	/*Configure GPIO pin : PA12 */
	GPIO_InitStruct.Pin = GPIO_PIN_12;
	GPIO_InitStruct.Mode = GPIO_MODE_IT_FALLING;
	GPIO_InitStruct.Pull = GPIO_NOPULL;
	HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

	/*Configure GPIO pin : PA15 */
	GPIO_InitStruct.Pin = GPIO_PIN_15;
	GPIO_InitStruct.Mode = GPIO_MODE_IT_RISING_FALLING;
	GPIO_InitStruct.Pull = GPIO_NOPULL;
	HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

	/*Configure GPIO pins : PB3 PB4 */
	GPIO_InitStruct.Pin = GPIO_PIN_3 | GPIO_PIN_4;
	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	GPIO_InitStruct.Pull = GPIO_NOPULL;
	GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
	HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

	/* EXTI interrupt init*/
	HAL_NVIC_SetPriority(EXTI15_10_IRQn, 0, 0);
	HAL_NVIC_EnableIRQ(EXTI15_10_IRQn);

}

/* USER CODE BEGIN 4 */
void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin) {

	if (GPIO_Pin == GPIO_PIN_15) {
		if (HAL_GetTick() - current_time1 > debounce_timeout1) {
			if (!HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_15)) {
				HAL_GPIO_WritePin(GPIOB, GPIO_PIN_4, GPIO_PIN_SET);
				elapsed_time1 = HAL_GetTick();
			} else {
				elapsed_time1 = HAL_GetTick() - elapsed_time1;

				if (elapsed_time1 > debounce_long_timeout1) {
					led_strip_reset();
					HAL_GPIO_WritePin(GPIOB, GPIO_PIN_4, GPIO_PIN_RESET);
					if (led_state < WHITE) {
						led_state = WHITE;
					} else {
						if (++led_state > WAVE)
							led_state = STRIP_RESET;
					}
				} else {
					if (led_state == IDLE) {
						if (++config_state > COLOR3)
							config_state = IDLE;

						if (config_state != IDLE) {
							HAL_TIM_Base_Start_IT(&htim1);
						} else {
							HAL_TIM_Base_Stop_IT(&htim1);
							HAL_GPIO_WritePin(GPIOB, GPIO_PIN_4,
									GPIO_PIN_RESET);
						}
					}
				}
			}

			current_time1 = HAL_GetTick();
		}
	}

	else if (GPIO_Pin == GPIO_PIN_12) {
		if (HAL_GetTick() - current_time2 > debounce_timeout2) {
			if (config_state == COLOR1) {
				if ((duty_1 += 10) > duty_max)
					duty_1 = 0;
				TIM4->CCR1 = duty_1;
			} else if (config_state == COLOR2) {
				if ((duty_2 += 10) > duty_max)
					duty_2 = 0;
				TIM4->CCR2 = duty_2;
			} else if (config_state == COLOR3) {
				if ((duty_3 += 10) > duty_max)
					duty_3 = 0;
				TIM4->CCR3 = duty_3;
			}

			current_time2 = HAL_GetTick();
		}
	}
}

void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim) {
	if (htim->Instance == TIM1) {
		HAL_GPIO_TogglePin(GPIOB, GPIO_PIN_4);
	}
}

void update_wave(void) {
	if (!duty_1_flag && !duty_2_flag && !duty_3_flag) { // LIGA 1
		if (++duty_1 >= duty_max)
			duty_1_flag = 1;
	} else if (duty_1_flag && !duty_2_flag && !duty_3_flag) { // LIGA 3
		if (++duty_3 >= duty_max)
			duty_3_flag = 1;
	} else if (duty_1_flag && !duty_2_flag && duty_3_flag) { // DESLIGA 1
		if (--duty_1 <= 0)
			duty_1_flag = 0;
	} else if (!duty_1_flag && !duty_2_flag && duty_3_flag) { // LIGA 2
		if (++duty_2 >= duty_max)
			duty_2_flag = 1;
	} else if (!duty_1_flag && duty_2_flag && duty_3_flag) { // DESLIGA 3
		if (--duty_3 <= 0)
			duty_3_flag = 0;
	} else if (!duty_1_flag && duty_2_flag && !duty_3_flag) { // LIGA 1
		if (++duty_1 >= duty_max)
			duty_1_flag = 1;
	} else if (duty_1_flag && duty_2_flag && !duty_3_flag) { // DESLIGA 2
		if (--duty_2 <= 0)
			duty_2_flag = 0;
	} else if (duty_1_flag && !duty_2_flag && !duty_3_flag) { // DESLIGA 1
		if (--duty_1 <= 0)
			duty_1_flag = 0;
	}

	TIM4->CCR1 = duty_1;
	TIM4->CCR2 = duty_2;
	TIM4->CCR3 = duty_3;

	HAL_Delay(1);
}

void led_strip_reset(void){
	duty_1_flag = 0;
	duty_1_flag = 0;
	duty_1_flag = 0;
	duty_1 = 0;
	duty_2 = 0;
	duty_3 = 0;
	TIM4->CCR1 = duty_1;
	TIM4->CCR2 = duty_2;
	TIM4->CCR3 = duty_3;
}
/* USER CODE END 4 */

/**
 * @brief  This function is executed in case of error occurrence.
 * @retval None
 */
void Error_Handler(void) {
	/* USER CODE BEGIN Error_Handler_Debug */
	/* User can add his own implementation to report the HAL error return state */

	/* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
 * @brief  Reports the name of the source file and the source line number
 *         where the assert_param error has occurred.
 * @param  file: pointer to the source file name
 * @param  line: assert_param error line source number
 * @retval None
 */
void assert_failed(uint8_t *file, uint32_t line)
{
	/* USER CODE BEGIN 6 */
	/* User can add his own implementation to report the file name and line number,
	 tex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
	/* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
