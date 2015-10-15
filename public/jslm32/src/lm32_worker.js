/**
 * Web Workers Wrapper.
 *
 * Copyright (c) 2011 Reginaldo Silva (reginaldo@ubercomp.com)
 *
 * This Javascript code is free software; you can redistribute it
 * and/or modify it under the terms of the GNU Lesser General Public
 * License, version 2.1, as published by the Free Software Foundation.
 *
 * This code is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this code; if not, see
 * <http://www.gnu.org/licenses/lgpl-2.1.html>
 */
importScripts('lm32_base.js',
    'lm32_bits.js',
    'lm32_pic.js',
    'lm32_cpu.js',
    'lm32_mmu.js',
    'lm32_ram.js',
    'lm32_hwsetup.js',
    'lm32_sys.js',
    'lm32_timer.js',
    'lm32_timer_real.js',
    'lm32_uart.js');

var sys;
var console_send_str;
var step;

function worker_terminal_putchar(c) {
    self.postMessage({type: 'terminal_putchar', payload: c});
}

function worker_inform_mips(mips) {
    self.postMessage({type: 'inform_mips', payload: mips});
}

function worker_on_message(e) {
    var msg = e.data;
    var type = msg.type;
    switch(type) {
        case 'work':
            step(10000);
            self.postMessage({type: 'work_done'});
            break;

        case 'terminal_send_str':
            console_send_str(msg.payload);
            break;

        default:
            throw({error: 'Unknown message', msg: msg});
            break;
    }
}

function worker_start() {
    sys = lm32.start_uclinux(worker_terminal_putchar);
    step = sys.cpu.step;
    sys.cpu.cs.mips_log_function = worker_inform_mips;
    console_send_str = sys.console_send_str;
    self.onmessage = worker_on_message;
    self.postMessage({type: 'worker_started'});
}

self.onmessage = worker_start;
self.onerror = function(e) { throw e.data; };
