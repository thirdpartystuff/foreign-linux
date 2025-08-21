/*
 * This file is part of Foreign Linux.
 *
 * Copyright (C) 2014, 2015 Xiangyan Sun <wishstudio@gmail.com>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#pragma once

void log_init_thread();
void log_init();
void log_shutdown();
void log_debug_internal(const char *format, ...);
void log_info_internal(const char *format, ...);
void log_warning_internal(const char *format, ...);
void log_error_internal(const char *format, ...);

extern int logger_attached;
#define log_debug !logger_attached ? (void)0 : log_debug_internal
#define log_info !logger_attached ? (void)0 : log_info_internal
#define log_warning !logger_attached ? (void)0 : log_warning_internal
#define log_error /*!logger_attached ? (void)0 :*/ log_error_internal

#ifdef _DEBUG

void log_assert_internal(const char *format, ...);

#define LOG_ASSERT_EXIT   127
#define log_assert_format "Assertion expression `%s` failed in function %s, at file %s: %d.\n"
#define log_assert(exp) do { if (logger_attached && !(exp)) log_assert_internal(log_assert_format, #exp, __FUNCTION__, __FILE__, __LINE__); } while (0)

#else

#define log_assert(exp)

#endif // _DEBUG


