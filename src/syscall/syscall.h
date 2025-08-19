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

#include <stdint.h>

#define DEFINE_SYSCALL0(name) \
	EXTERN_C intptr_t sys_##name(); \
	static intptr_t _sys_##name() \
	{ \
		return sys_##name(); \
	} \
	intptr_t sys_##name()

#define DEFINE_SYSCALL1(name, t1, a1) \
	EXTERN_C intptr_t sys_##name(t1 a1); \
	static intptr_t _sys_##name(intptr_t a1) \
	{ \
		return sys_##name((t1)a1); \
	} \
	intptr_t sys_##name(t1 a1)

#define DEFINE_SYSCALL2(name, t1, a1, t2, a2) \
	EXTERN_C intptr_t sys_##name(t1 a1, t2 a2); \
	static intptr_t _sys_##name(intptr_t a1, intptr_t a2) \
	{ \
		return sys_##name((t1)a1, (t2)a2); \
	} \
	intptr_t sys_##name(t1 a1, t2 a2)

#define DEFINE_SYSCALL3(name, t1, a1, t2, a2, t3, a3) \
	EXTERN_C intptr_t sys_##name(t1 a1, t2 a2, t3 a3); \
	static intptr_t _sys_##name(intptr_t a1, intptr_t a2, intptr_t a3) \
	{ \
		return sys_##name((t1)a1, (t2)a2, (t3)a3); \
	} \
	intptr_t sys_##name(t1 a1, t2 a2, t3 a3)

#define DEFINE_SYSCALL4(name, t1, a1, t2, a2, t3, a3, t4, a4) \
	EXTERN_C intptr_t sys_##name(t1 a1, t2 a2, t3 a3, t4 a4); \
	static intptr_t _sys_##name(intptr_t a1, intptr_t a2, intptr_t a3, intptr_t a4) \
	{ \
		return sys_##name((t1)a1, (t2)a2, (t3)a3, (t4)a4); \
	} \
	intptr_t sys_##name(t1 a1, t2 a2, t3 a3, t4 a4)

#define DEFINE_SYSCALL5(name, t1, a1, t2, a2, t3, a3, t4, a4, t5, a5) \
	EXTERN_C intptr_t sys_##name(t1 a1, t2 a2, t3 a3, t4 a4, t5 a5); \
	static intptr_t _sys_##name(intptr_t a1, intptr_t a2, intptr_t a3, intptr_t a4, intptr_t a5) \
	{ \
		return sys_##name((t1)a1, (t2)a2, (t3)a3, (t4)a4, (t5)a5); \
	} \
	intptr_t sys_##name(t1 a1, t2 a2, t3 a3, t4 a4, t5 a5)

#define DEFINE_SYSCALL6(name, t1, a1, t2, a2, t3, a3, t4, a4, t5, a5, t6, a6) \
	EXTERN_C intptr_t sys_##name(t1 a1, t2 a2, t3 a3, t4 a4, t5 a5, t6 a6); \
	static intptr_t _sys_##name(intptr_t a1, intptr_t a2, intptr_t a3, intptr_t a4, intptr_t a5, intptr_t a6) \
	{ \
		return sys_##name((t1)a1, (t2)a2, (t3)a3, (t4)a4, (t5)a5, (t6)a6); \
	} \
	intptr_t sys_##name(t1 a1, t2 a2, t3 a3, t4 a4, t5 a5, t6 a6)

#define DEFINE_SYSCALL7(name, t1, a1, t2, a2, t3, a3, t4, a4, t5, a5, t6, a6, t7, a7) \
	EXTERN_C intptr_t sys_##name(t1 a1, t2 a2, t3 a3, t4 a4, t5 a5, t6 a6, t7 a7); \
	static intptr_t _sys_##name(intptr_t a1, intptr_t a2, intptr_t a3, intptr_t a4, intptr_t a5, intptr_t a6, intptr_t a7) \
	{ \
		return sys_##name((t1)a1, (t2)a2, (t3)a3, (t4)a4, (t5)a5, (t6)a6, (t7)a7); \
	} \
	intptr_t sys_##name(t1 a1, t2 a2, t3 a3, t4 a4, t5 a5, t6 a6, t7 a7)

#define DEFINE_SYSCALL8(name, t1, a1, t2, a2, t3, a3, t4, a4, t5, a5, t6, a6, t7, a7, t8, a8) \
	EXTERN_C intptr_t sys_##name(t1 a1, t2 a2, t3 a3, t4 a4, t5 a5, t6 a6, t7 a7, t8 a8); \
	static intptr_t _sys_##name(intptr_t a1, intptr_t a2, intptr_t a3, intptr_t a4, intptr_t a5, intptr_t a6, intptr_t a7, intptr_t a8) \
	{ \
		return sys_##name((t1)a1, (t2)a2, (t3)a3, (t4)a4, (t5)a5, (t6)a6, (t7)a7, (t8)a8); \
	} \
	intptr_t sys_##name(t1 a1, t2 a2, t3 a3, t4 a4, t5 a5, t6 a6, t7 a7, t8 a8)

void install_syscall_handler();
